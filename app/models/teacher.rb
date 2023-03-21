class Teacher < ApplicationRecord
	has_many :comments,dependent: :destroy
	
	validates :name, presence:true #, uniqueness: true, length: { minimum: 3 }#, on: :create, length: { minimum: 3 }
	validates :subject,presence:true #, uniqueness: true#, on: :create
     
end
