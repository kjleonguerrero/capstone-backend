class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
