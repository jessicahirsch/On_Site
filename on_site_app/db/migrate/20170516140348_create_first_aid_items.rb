class CreateFirstAidItems < ActiveRecord::Migration[5.0]
  def change
    create_table :first_aid_items do |t|
      t.string :name
      t.string :instructions

      t.timestamps
    end
  end
end
