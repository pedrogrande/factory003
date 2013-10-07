class AddLengthToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :length, :integer
  end
end
