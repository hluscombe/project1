class CreateBandsSynths < ActiveRecord::Migration[5.2]
  def change
    create_table :bands_synths do |t|
      t.integer :band_id
      t.integer :synth_id
    end
  end
end
