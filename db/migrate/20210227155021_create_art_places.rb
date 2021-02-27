class CreateArtPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :art_places do |t|
      t.string :Location
      t.string :urlPic
      t.string :budget
      t.text :descirption

      t.timestamps
    end
  end
end
