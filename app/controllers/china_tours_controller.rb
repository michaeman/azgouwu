class ChinaToursController < ApplicationController
  def reason
  end

  def service
    @customer = Customer.new
  end

  def fee
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :middle_name, :email, :addr_line_1, :addr_line_2, :addr_line_3, :post_code, :addr_city, :addr_state, :phone, :overseas_phone, :reference_num)
    end
end
