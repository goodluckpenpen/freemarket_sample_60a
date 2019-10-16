class AddCardSecurityCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_security_code, :string, null: false
  end
end
