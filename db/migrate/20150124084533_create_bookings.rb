class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.boolean :visa_service
      t.boolean :flight_service
      t.boolean :hotel_service
      t.boolean :pickup_service
      t.boolean :standard_service
      t.text :notes
      t.belongs_to :customer, index: true

      t.timestamps null: false
    end
    add_foreign_key :bookings, :customers
  end
end
