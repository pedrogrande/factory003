class Enquiry < ActiveRecord::Base
	attr_accessible :name, :email, :phone, :enquiry_type, :message, :responded 

	validates_presence_of :name, :email, :enquiry_type, :message
end
