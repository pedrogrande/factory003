class AddClassDaysToIntakes < ActiveRecord::Migration
  def change
    add_column :intakes, :class_days, :string
  end
end
