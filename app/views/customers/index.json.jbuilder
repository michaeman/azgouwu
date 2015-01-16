json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :middle_name, :email, :addr_line_1, :addr_line_2, :addr_line_3, :post_code, :addr_city, :addr_state, :phone, :overseas_phone, :reference_num
  json.url customer_url(customer, format: :json)
end
