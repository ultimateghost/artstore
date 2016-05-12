class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders

  def admin?
    is_admin
  end

  def to_admin
    self.update_columns(is_admin: true)
  end

  def to_normal
    self.update_columns(is_admin: false)
  end
end
