class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :mission_name
      t.integer :mission_id
      t.text :wikipedia
      t.text :website
      t.text :twitter
      t.text :description

      t.timestamps
    end
  end
end
