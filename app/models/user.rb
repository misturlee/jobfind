class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  validates :f_name, :desc,:role, :email, :password, :password_confirmation, presence: true
  validates :email, format: {with: Devise.email_regexp}
  validates :f_name, length: {minimum:  3, too_short: "%{count} is too small to be a full name"}

  has_many :jobs

end
