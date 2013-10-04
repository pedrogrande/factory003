class EnquiryMailer < ActionMailer::Base
  default from: "The Coder Factory <info@thecoderfactory.com>"

  def enquiry_received(enquiry)
  	@enquiry = enquiry
  	mail(:to => "kim@thecoderfactory.com, pete@thecoderfactory.com", :subject => "Enquiry Received")
  end

  def enquiry_response(enquiry)
  	@enquiry = enquiry
  	mail(:to => enquiry.email, :subject => "Thank you. Your Coder Factory enquiry has been received")
  end
end
