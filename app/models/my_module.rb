class MyModule < ApplicationRecord
	validates :name, :uniqueness => true
    validates_format_of :name, :with => /[a-z]/i 

	validates :meta_title,uniqueness:true
	validates_format_of :meta_title, :with => /[a-z]/i 
	validates :description,presence:true 
    #date.strftime("%m/%d/%Y") 
end
