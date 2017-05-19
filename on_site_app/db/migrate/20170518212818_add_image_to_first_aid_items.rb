class AddImageToFirstAidItems < ActiveRecord::Migration[5.0]
  def change
    add_column :first_aid_items, :image, :string
  end
end
