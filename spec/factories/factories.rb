FactoryGirl.define do
  factory :customer do 
    first_name "foo"
    last_name "bar"
    sequence(:email) { |n| "foo@hexinpeter#{n}.com" }
    addr_line_1 "#101"
    addr_line_2 "3 Foo Street"
    addr_line_3 ""
    post_code "3000"
    addr_city "Melbourne"
    addr_state  "VIC"
    phone "0367874567"
    overseas_phone "+8617822278988"
  end

  factory :booking do 
    visa_service true
    flight_service true
    hotel_service true
    pickup_service true
    standard_service true
    notes "nothing"
    association :customer
  end
end
