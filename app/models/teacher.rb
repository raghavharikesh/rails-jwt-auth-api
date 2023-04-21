class Teacher < ApplicationRecord
    before_create :set_default_subject
    before_update :set_subject
	has_many :comments,dependent: :destroy	
	validates :name, presence:true #, uniqueness: true, length: { minimum: 3 }#, on: :create, length: { minimum: 3 }
	validates :subject, uniqueness: true#, on: :create
	def set_default_subject
  	puts "i m in before_create block of body"
	  	 if self.subject.nil?
	  	 	self.subject = " before_create MATH"
	  	 end 
	end  
     
    def set_subject
  	puts "i m in before_create block of body"
	  	 if self.subject.nil?
	  	 	self.subject = " before_update MATH"
	  	 end 
	end  

end
