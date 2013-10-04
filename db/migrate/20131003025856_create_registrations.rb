class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.boolean :opt_in

      t.timestamps
    end
  end
end
