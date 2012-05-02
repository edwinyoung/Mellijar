class User < ActiveRecord::Base
  attr_accessible :email, :fname, :lname, :password, :password_confirmation

  validates :fname, presence: true, length: { maximum: 40 }
  validates :lname, presence: true, length: { maximum: 40 }
  VALID_EMAIL_REGEX = /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true  
end
