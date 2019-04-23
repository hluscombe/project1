class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.text :name
      t.integer :year_formed
      t.text :image

      t.timestamps
    end
  end
end
