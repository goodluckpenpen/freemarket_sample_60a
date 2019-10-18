class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :users, :building_name,:string, null: true 
    end
  
    def down
      change_column :users, :building_name,:string, null: false
    end
  end
end
