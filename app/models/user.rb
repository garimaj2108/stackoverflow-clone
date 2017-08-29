class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true
  has_secure_password

  has_many :questions
  has_many :answers

  def self.authenticate(args)
    username = args[:user][:username]
    password = args[:user][:password]
    user = User.find_by(username)
    if user.password == password
      return user
    end
  end
end
