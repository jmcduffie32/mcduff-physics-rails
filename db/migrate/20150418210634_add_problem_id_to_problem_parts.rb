class AddProblemIdToProblemParts < ActiveRecord::Migration
  def change
    add_column :problem_parts, :problem_id, :integer
  end
end
