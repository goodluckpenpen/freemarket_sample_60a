class RenamePostalCoadColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :postal_coad, :postal_code
  end
end
