class Customer < ActiveRecord::Base
  validates :first_name, :last_name, :email, :phone, :addr_line_1, :addr_city, :addr_state, :post_code, presence: true
  validates :email, uniqueness: true, format: { with: %r{\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z}i }
  validates :post_code, format: { with: %r{\d{4}} }
  validates :addr_state, inclusion: { in: ['VIC', 'NSW', 'ACT', 'NT', 'Qld', 'SA', 'Tas', 'WA'] }
end
