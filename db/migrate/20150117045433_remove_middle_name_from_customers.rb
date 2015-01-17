class RemoveMiddleNameFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :middle_name, :string
  end
end
