class CreatePayloads < ActiveRecord::Migration[5.2]
  def change
    create_table :payloads do |t|
      t.integer :payload_id
      t.boolean :reused
      t.text :manufacturer
      t.text :payload_type
      t.integer :payload_mass_kg
      t.integer :payload_mass_lbs
      t.text :orbit

      t.timestamps
    end
  end
end
