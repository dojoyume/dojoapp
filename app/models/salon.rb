class Salon < ActiveRecord::Base
   mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
 has_many :passes

   def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = Salon.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = Salon.create(salon_name:     auth.extra.raw_info.name,
                         provider: auth.provider,
                         uid:      auth.uid,
                         email:    auth.info.email,
                         password: Devise.friendly_token[0,20]
                        )
    end
    user
  end

end
