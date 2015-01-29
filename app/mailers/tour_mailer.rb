class TourMailer < ApplicationMailer
  include Roadie::Rails::Automatic
  
  default from: "support@lecongfurniture.com.au"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.china_tour.booking.subject
  #
  def booking
    @booking = Booking.find(40) 
    @customer = @booking.customer
    

    mail to: "hexinpeter@gmail.com", subject: "Test Lecong"
  end
end
