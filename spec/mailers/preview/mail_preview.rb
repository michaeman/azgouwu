# require "rails_helper"
# view the mail previews at http://localhost:3000/rails/mailers/mail/welcome
class MailPreview < ActionMailer::Preview
  
  def welcome    
    mail = TourMailer.booking(40)
  end

end