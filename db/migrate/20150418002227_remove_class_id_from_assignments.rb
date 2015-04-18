class RemoveClassIdFromAssignments < ActiveRecord::Migration
  def change
    remove_column :assignments, :class_id, :integer
  end
end
