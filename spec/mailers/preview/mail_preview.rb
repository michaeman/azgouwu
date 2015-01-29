# require "rails_helper"

class MailPreview < ActionMailer::Preview
  
  def welcome    
    mail = TourMailer.booking
  end

end