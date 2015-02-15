class ChinaToursController < ApplicationController
  def lecong_market
  end

  def service
    @customer = Customer.new
    @booking = Booking.new
  end

  def fee
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.create_without_ref_num(customer_params)
    @booking = @customer.bookings.new(booking_params)

    respond_to do |format|
      if @customer.save and @booking.save
        # format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        session[:booking_id] = @booking.id
        # mailer testing
        TourMailer.booking(@booking.id).deliver_now
        
        format.html { redirect_to '/china_tours/confirmation' }
        # format.js { @booking }
        # format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :service }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /confirmation
  def confirmation
    if session[:booking_id]
      @booking = Booking.find(session[:booking_id])
      @customer = @booking.customer
    else 
      @booking = nil
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :middle_name, :email, :addr_line_1, :addr_line_2, :addr_line_3, :post_code, :addr_city, :addr_state, :phone, :overseas_phone, :reference_num)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:visa_service, :flight_service, :hotel_service, :pickup_service, :standard_service)
    end
end
