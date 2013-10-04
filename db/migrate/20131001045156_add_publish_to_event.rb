class AddPublishToEvent < ActiveRecord::Migration
  def change
    add_column :events, :publish, :boolean
  end
end
