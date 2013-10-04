class EnrolmentMailer < ActionMailer::Base
  default from: "The Coder Factory <info@thecoderfactory.com>"

  def enrolment_received(enrolment)
  	@enrolment = enrolment
  	mail(:to => "kim@thecoderfactory.com, pete@thecoderfactory.com", :subject => "Enrolment Received")
  end

  def enrolment_response(enrolment)
  	@enrolment = enrolment
  	mail(:to => enrolment.email, :subject => "Your enrolment has been received at The Coder Factory")
  end
end
