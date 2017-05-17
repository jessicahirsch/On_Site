class ChangeCoordsTypeTable < ActiveRecord::Migration[5.0]
  def change


    def up
    change_column :first_aid_items, :coords, :text
  end

  def down
    change_column :first_aid_items, :coords, :string
  end

  end

end
