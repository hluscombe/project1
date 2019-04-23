class CreateDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :designers do |t|
      t.text :name
      t.text :dob
      t.text :company
      t.text :image

      t.timestamps
    end
  end
end
