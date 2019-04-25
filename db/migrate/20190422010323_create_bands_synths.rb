class CreateBandsSynths < ActiveRecord::Migration[5.2]
  def change
    create_table :bands_synths, :id => false do |t|
      t.integer :band_id, index: true
      t.integer :synth_id, index: true
    end
  end
end
