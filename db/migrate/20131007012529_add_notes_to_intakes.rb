class AddNotesToIntakes < ActiveRecord::Migration
  def change
    add_column :intakes, :notes, :text
  end
end
