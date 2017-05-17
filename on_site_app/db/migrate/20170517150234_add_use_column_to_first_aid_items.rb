class AddUseColumnToFirstAidItems < ActiveRecord::Migration[5.0]
  def change
    add_column :first_aid_items, :uses, :text
  end
end
