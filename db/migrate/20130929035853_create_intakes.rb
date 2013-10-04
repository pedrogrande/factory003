class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.references :course, index: true
      t.date :start_date
      t.time :start_time
      t.time :finish_time
      t.integer :duration
      t.string :duration_type
      t.boolean :scheduled
      t.boolean :confirmed
      t.string :location
      t.decimal :cost, precision: 7, scale: 2

      t.timestamps
    end
  end
end
