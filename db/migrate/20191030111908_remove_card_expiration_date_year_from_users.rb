class RemoveCardExpirationDateYearFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :card_expiration_date_year, :integer
  end
end
