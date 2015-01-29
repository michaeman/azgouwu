class TourMailer < ApplicationMailer
  include Roadie::Rails::Automatic
  
  default from: "Lecong Furniture <support@lecongfurniture.com.au>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.china_tour.booking.subject
  #
  def booking(booking_id)
    @booking = Booking.find(booking_id) 
    @customer = @booking.customer
    

    mail to: @customer.email, subject: "Successful Booking", bcc: 'support@lecongfurniture.com.au'
  end
end
