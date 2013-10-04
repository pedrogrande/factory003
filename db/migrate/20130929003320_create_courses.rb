class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :icon
      t.boolean :publish
      t.text :intro
      t.text :description
      t.text :designed_for

      t.timestamps
    end
  end
end
