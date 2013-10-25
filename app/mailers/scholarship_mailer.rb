class ScholarshipMailer < ActionMailer::Base
  default from: "The Coder Factory <info@thecoderfactory.com>"

  def scholarship_received(scholarship)
  	@scholarship = scholarship
  	mail(:to => "kim@thecoderfactory.com, pete@thecoderfactory.com", :subject => "Scholarship Received")
  end

  def scholarship_response(scholarship)
  	@scholarship = scholarship
  	mail(:to => scholarship.email, :subject => "Your scholarship application has been received at The Coder Factory")
  end
end
