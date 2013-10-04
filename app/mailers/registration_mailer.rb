class RegistrationMailer < ActionMailer::Base
  default from: "The Coder Factory <info@thecoderfactory.com>"

  def registration_received(registration)
  	@registration = registration
  	mail(:to => "kim@thecoderfactory.com, pete@thecoderfactory.com", :subject => "Registration Received")
  end

  def registration_response(registration)
  	@registration = registration
  	mail(:to => registration.email, :subject => "Thank you for your registration of interest. The Coder Factory")
  end
end
