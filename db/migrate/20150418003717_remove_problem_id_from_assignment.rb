class RemoveProblemIdFromAssignment < ActiveRecord::Migration
  def change
    remove_column :assignments, :problem_id, :integer
  end
end
