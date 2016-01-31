class User < ActiveRecord::Base
	has_many :exercises
	has_many :user_frienships
	has_many :friends,through: :user_friendships
	validates :user_name, presence: true, length:{minimum:5}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX  }
	has_secure_password
end
