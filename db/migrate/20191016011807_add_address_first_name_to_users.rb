class AddAddressFirstNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address_first_name, :string, null: false
  end
end
