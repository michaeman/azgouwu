require 'rails_helper'

RSpec.describe Booking, :type => :model do
  it "successfully creates a Booking" do
    create(:booking)
  end
end
