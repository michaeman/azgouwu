class Customer < ActiveRecord::Base
  has_many :bookings, dependent: :destroy

  validates :first_name, :last_name, :email, :phone, :addr_line_1, :addr_city, :addr_state, :post_code, presence: true
  validates :email, format: { with: %r{\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z}i }
  validates :post_code, format: { with: %r{\d{4}}i }
  validates :addr_state, inclusion: { in: ['VIC', 'NSW', 'ACT', 'NT', 'Qld', 'SA', 'Tas', 'WA'] }
  validates :phone, format: { with: %r{\+?\d{5,15}}i } # a rough guide
  validates :reference_num, uniqueness: true

  # create new Customer accepting arguments from the form input, assign a random reference_num to it
  def Customer.create_without_ref_num(param)
    c = Customer.new(param)
    if c.reference_num == nil
      c.reference_num = generate_reference_num
    end
    return c
  end

  private 
    # generate a unique reference number
    def Customer.generate_reference_num
      r_num = Array.new(10){[*"A".."Z", *"0".."9"].sample}.join
      while Customer.find_by reference_num: r_num do 
        r_num = Array.new(10){[*"A".."Z", *"0".."9"].sample}.join
      end
      return r_num 
    end

end
