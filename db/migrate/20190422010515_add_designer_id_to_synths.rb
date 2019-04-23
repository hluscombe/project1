class AddDesignerIdToSynths < ActiveRecord::Migration[5.2]
  def change
    add_column :synths, :designer_id, :integer
  end
end
