require 'rails_helper'

RSpec.describe Customer, :type => :model do
  describe "create" do
    it "creates a valid user" do
      customer = create(:customer)
      c = Customer.new(first_name: customer.first_name, last_name: customer.last_name, email: customer.email, addr_line_1: customer.addr_line_1, addr_line_2: customer.addr_line_2, addr_line_3: customer.addr_line_3, post_code: customer.post_code, addr_city: customer.addr_city, addr_state: customer.addr_state, phone: customer.phone, overseas_phone: customer.overseas_phone)
      expect(c.valid?).to eq(true)
    end

    it "fails when email incorrect" do
      customer = build(:customer, email: "hexinpeter")
      # c = Customer.new(first_name: customer.first_name, last_name: customer.last_name, email: customer.email, addr_line_1: customer.addr_line_1, addr_line_2: customer.addr_line_2, addr_line_3: customer.addr_line_3, post_code: customer.post_code, addr_city: customer.addr_city, addr_state: customer.addr_state, phone: customer.phone, overseas_phone: customer.overseas_phone)
      expect(customer.valid?).to eq(false)
    end
  end

end
