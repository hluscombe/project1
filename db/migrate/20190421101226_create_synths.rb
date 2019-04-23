class CreateSynths < ActiveRecord::Migration[5.2]
  def change
    create_table :synths do |t|
      t.text :name
      t.integer :voices
      t.text :bands
      t.text :image

      t.timestamps
    end
  end
end
