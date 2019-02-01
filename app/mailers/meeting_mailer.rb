class MeetingMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'

  def meeting_email(booked_by,meeting)
  	@booked_by = booked_by
  	@meeting = meeting

  	mail( :to => @booked_by.email,
    :subject => 'Re: Record Meeting - Claranet / Inform Billing
' )

  end
end
