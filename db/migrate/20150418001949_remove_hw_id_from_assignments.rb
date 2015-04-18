class RemoveHwIdFromAssignments < ActiveRecord::Migration
  def change
    remove_column :assignments, :hw_id, :integer
  end
end
