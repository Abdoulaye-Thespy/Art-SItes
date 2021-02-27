class CreateSeens < ActiveRecord::Migration[5.0]
  def change
    create_table :seens do |t|
      t.belongs_to :art_place
      t.string :date
      t.timestamps
    end
  end
end
