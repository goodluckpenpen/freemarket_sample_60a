class RemoveCardSecurityCodeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :card_security_code, :string
  end
end
