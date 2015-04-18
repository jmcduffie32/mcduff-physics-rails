class RemoveProblemIdFromProblems < ActiveRecord::Migration
  def change
    remove_column :problems, :problem_id, :integer
  end
end
