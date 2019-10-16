class AddCardExpirationDateYearToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_expiration_date_year, :integer, null: false
  end
end
