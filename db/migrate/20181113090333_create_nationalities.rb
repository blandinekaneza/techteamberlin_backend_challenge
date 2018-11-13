class CreateNationalities < ActiveRecord::Migration[5.2]
  def change
    create_table :nationalities do |t|
      t.string :name

      t.timestamps
    end
  end
end
