class AddCardExpirationDateMonthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_expiration_date_month, :integer, null: false
  end
end
