class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :recoverable
  validates_presence_of :password
  validates_presence_of :email, if: :password?
  validates_uniqueness_of :email, if: :password?
  validates_format_of :email,:with => Devise::email_regexp

  def password?
    password.blank?
  end
end
