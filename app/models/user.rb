class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :recoverable
  validates_presence_of :password, :email
  validates_uniqueness_of :email
  validates_format_of :email,:with => Devise::email_regexp

  def password?
    password.blank?
  end
end
