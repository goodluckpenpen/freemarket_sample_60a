class RemoveUserFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :images, :user, foreign_key: true
  end
end
