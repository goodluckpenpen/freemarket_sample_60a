class RemoveCardExpirationDateMonthFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :card_expiration_date_month, :integer
  end
end
