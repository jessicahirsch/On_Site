class AddColumnToFirstAidItems < ActiveRecord::Migration[5.0]
  def change
    add_column :first_aid_items, :coords, :string
  end
end
