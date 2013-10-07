class AddPriorityToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :priority, :integer
  end
end
