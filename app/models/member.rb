class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  as_enum :profession, [:designer, :developer, :marketing]

  mount_uploader :avatar, MemberAvatarUploader

  has_many :social_services, dependent: :destroy
end
