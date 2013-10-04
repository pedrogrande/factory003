class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :enquiry_type
      t.text :message
      t.boolean :responded

      t.timestamps
    end
  end
end
