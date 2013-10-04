class AddTitleToIntake < ActiveRecord::Migration
  def change
    add_column :intakes, :title, :string
  end
end
