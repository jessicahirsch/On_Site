class CreateTraumas < ActiveRecord::Migration[5.0]
  def change
    create_table :traumas do |t|
      t.string :name
      t.string :instructions

      t.timestamps
    end
  end
end
