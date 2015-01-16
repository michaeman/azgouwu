class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :email
      t.string :addr_line_1
      t.string :addr_line_2
      t.string :addr_line_3
      t.string :post_code
      t.string :addr_city
      t.string :addr_state
      t.string :phone
      t.string :overseas_phone
      t.string :reference_num

      t.timestamps null: false
    end
  end
end
