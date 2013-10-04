class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :intro
      t.text :description
      t.string :location
      t.string :address
      t.string :suburb
      t.string :postcode
      t.date :date
      t.time :start_time
      t.time :finish_time
      t.decimal :cost, precision: 7, scale: 2
      t.string :rsvp
      t.string :icon

      t.timestamps
    end
  end
end
