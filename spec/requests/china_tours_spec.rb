require 'rails_helper'

RSpec.describe "ChinaTours", :type => :request do
  describe "GET /china_tours" do
    it "works! (now write some real specs)" do
      get china_tours_path
      expect(response).to have_http_status(200)
    end

    it "shows two forms" do
      visit china_tours_path
      expect(page).to have_content("Arrange your visa")
      expect(page).to have_content("Book a Service")
      expect(page).to have_content("First Name")
      expect(page).to have_button("Book a Trip")
    end

    it "saves the Customer record when Add-a-Trip button pressed" do
      visit china_tours_path
      c = build(:customer)
      fill_in 'First Name', with: c.first_name
      fill_in 'Last Name', with: c.last_name
      fill_in 'Email', with: c.email 
      fill_in 'Phone', with: c.phone 
      fill_in 'Address Line 1', with: c.addr_line_1
      fill_in 'City', with: c.addr_city
      select c.addr_state, from: "State"
      fill_in 'Postcode', with: c.post_code
      click_button 'Book a Trip'
      expect(Customer.last.email).to eq(c.email)
      expect(page).to have_content('Customer was successfully created.')
    end

    it "saves both the Customer and Booking info, with correct association" do
      visit china_tours_path
      b = build(:booking)
      check 'booking_visa_service' if b.visa_service
      check 'booking_flight_service' if b.flight_service
      check 'booking_hotel_service' if b.hotel_service
      check 'booking_pickup_service' if b.pickup_service

      c = b.customer
      fill_in 'First Name', with: c.first_name
      fill_in 'Last Name', with: c.last_name
      fill_in 'Email', with: c.email 
      fill_in 'Phone', with: c.phone 
      fill_in 'Address Line 1', with: c.addr_line_1
      fill_in 'City', with: c.addr_city
      select c.addr_state, from: "State"
      fill_in 'Postcode', with: c.post_code

      click_button 'Book a Trip'

      expect(Booking.last.visa_service).to eq(b.visa_service)
      expect(Booking.last.flight_service).to eq(b.flight_service)
      expect(Booking.last.hotel_service).to eq(b.hotel_service)
      expect(Booking.last.pickup_service).to eq(b.pickup_service)
      expect(Booking.last.standard_service).to eq(b.standard_service)
      expect(Customer.last.email).to eq(c.email)
      expect(Customer.last.first_name).to eq(c.first_name)
      expect(page).to have_content('Customer was successfully created.')
    end
  end
end
