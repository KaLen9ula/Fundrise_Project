class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.references :project, null: false, foreign_key: true
      t.text :image_data

      t.timestamps
    end
  end
end
