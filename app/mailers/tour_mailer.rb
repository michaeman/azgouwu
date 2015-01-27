class TourMailer < ApplicationMailer
  default from: "support@lecongfurniture.com.au"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.china_tour.booking.subject
  #
  def booking
    @greeting = "Hi"

    mail to: "hexinpeter@gmail.com", subject: "Test Lecong"
  end
end
