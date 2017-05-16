class CreateTraumaItems < ActiveRecord::Migration[5.0]
  def change
    create_table :trauma_items do |t|
      t.references :traumas, foreign_key: true
      t.references :first_aid_items, foreign_key: true

      t.timestamps
    end
  end
end
