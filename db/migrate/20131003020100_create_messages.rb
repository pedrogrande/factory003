class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :icon
      t.string :title
      t.text :content
      t.boolean :active
      t.integer :priority

      t.timestamps
    end
  end
end
