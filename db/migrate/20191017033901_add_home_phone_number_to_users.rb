class AddHomePhoneNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :home_phone_number, :integer
  end
end
