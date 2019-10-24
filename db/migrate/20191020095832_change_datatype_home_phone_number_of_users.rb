class ChangeDatatypeHomePhoneNumberOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :home_phone_number, :string
  end
end
