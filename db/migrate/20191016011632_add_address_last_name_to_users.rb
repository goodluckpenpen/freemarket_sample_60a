class AddAddressLastNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address_last_name, :string ,null: false
  end
end
