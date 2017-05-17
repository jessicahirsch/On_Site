class AddSomethingToSession < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :whatever, :string
  end
end
