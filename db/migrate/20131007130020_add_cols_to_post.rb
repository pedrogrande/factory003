class AddColsToPost < ActiveRecord::Migration
  def change
  	create_table :post do |t|
      t.string :title
      t.text :content
      t.string :lead
      t.string :image
      t.string :icon
      t.string :slug

      t.timestamps
    end
  end
end
