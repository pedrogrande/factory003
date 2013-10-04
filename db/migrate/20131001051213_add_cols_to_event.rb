class AddColsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :month, :integer
    add_column :events, :year, :integer
  end
end
