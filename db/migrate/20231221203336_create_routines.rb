class CreateRoutines < ActiveRecord::Migration[7.0]
  def change
    create_table :routines do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.integer :reps

      t.timestamps
    end
  end
end
