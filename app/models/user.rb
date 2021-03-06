class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  belongs_to :location

  validates :uid, uniqueness: { scope: :provider }, allow_nil: true
  validates_presence_of :email, :full_name
  validate :ensure_location_exists

  # Callbacks
  after_create :welcome_user

  # Find or create resource with auth hash returned from omniauth provider.
  def self.find_or_create_with_omniauth(auth)
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.email = auth.dig("info", "email")
      user.password = Devise.friendly_token
    end
  end

  # Override Devise's method used to build resource in registrations controller.
  def self.new_with_session(params, session)
    super.tap do |user|
      auth = session["devise.omniauth-facebook"]
      if auth.present?
        user.password = Devise.friendly_token
        user.provider = auth["provider"]
        user.uid = auth["uid"]
      end
    end
  end

  # Check if user signed-up through OmniAuth.
  def omniauth?
    provider? && uid?
  end

  def postal_code
    location.try(:postal_code)
  end

  def postal_code=(value)
    self.location = Location.find_by(postal_code: value)
  end

  private

  def welcome_user
    UserMailer.welcome_user(self).deliver_now
  end

  def ensure_location_exists
    errors.add('postal_code', 'รหัสไปรษณีย์ไม่ถูกต้อง') unless self.postal_code
  end
end
