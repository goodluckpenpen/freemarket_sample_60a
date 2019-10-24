class AddAuthenticationCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :authentication_code, :integer
  end
end
