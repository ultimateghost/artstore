class User < ActiveRecord::Base
<<<<<<< HEAD
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  has_many :orders

=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
  def admin?
    is_admin
  end

  def to_admin
    self.update_columns(is_admin: true)
  end
<<<<<<< HEAD

=======
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
  def to_normal
    self.update_columns(is_admin: false)
  end

<<<<<<< HEAD
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
=======
  has_many :orders
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
end
