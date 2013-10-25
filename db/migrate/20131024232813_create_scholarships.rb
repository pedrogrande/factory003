class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :linkedin
      t.text :background
      t.text :work_history
      t.text :education_history
      t.text :motivation
      t.text :goals
      t.string :referrer
      t.boolean :agree_to_terms

      t.timestamps
    end
  end
end
