class AddAddressLastNameKanaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address_last_name_kana, :string, null: false
  end
end
