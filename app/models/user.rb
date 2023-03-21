class User < ApplicationRecord
	
	validates :username, presence:true#,uniqueness: true
	validates :password,presence:true#,uniqueness: true
	has_secure_password
	# with_options if: :username? do |username|
 #    username.validates :username ,uniqueness: true,length: { minimum: 5 }
 #    username.validates :password, presence: true
 end
