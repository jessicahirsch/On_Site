class AddColumnToTraumas < ActiveRecord::Migration[5.0]
  def change
    add_column :traumas, :topic, :string
  end
end
