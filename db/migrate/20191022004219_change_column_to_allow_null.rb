class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def up
    change_column_null :users, :building_name, true, nil
  end

  def down
    change_column_null :users, :building_name, false
  end
end
