class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.integer :problem_id
      t.text :problem_text
      t.string :topic

      t.timestamps null: false
    end
  end
end
