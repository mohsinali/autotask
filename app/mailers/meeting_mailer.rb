class MeetingMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'

  def meeting_email(booked_by,meeting)
  	@booked_by = booked_by
  	@meeting = meeting
  	mail( :to => @booked_by.email,
    :subject => 'Re: Record Meeting - Claranet / Inform Billing')
  end
  def meeting_organizations_email(booked_by,meeting,organization)
  	@booked_by = booked_by
    @organization = organization
    @meeting = meeting
    mail( :to => @organization.email,
    :subject => 'Re: Record Meeting - Claranet / Inform Billing')
  end
end
