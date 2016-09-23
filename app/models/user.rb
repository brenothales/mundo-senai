class User  < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable
#   :omniauth_providers => [:twitter, :facebook, :linkedin, :google,
#                                  *(:developer if Rails.env.development?)]

	def apply_omniauth(auth)
    self.email = auth['extra']['raw_info']['email']
    authentications.build(:provider => auth['provider'], :uid => auth['uid'], :token => auth['credentials']['token'])
  end


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name = auth.info.name
			user.cpf = auth.info.cpf
      user.password = Devise.friendly_token[0,20]
      user.image = auth.info.image

    end
  end
end