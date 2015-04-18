class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :problem, index: true, foreign_key: true
      t.belongs_to :assignment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
