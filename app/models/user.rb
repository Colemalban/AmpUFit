class User < ActiveRecord::Base
	validates :user_name, presence: true, length:{minimum:5}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX  }
	has_secure_password
end
