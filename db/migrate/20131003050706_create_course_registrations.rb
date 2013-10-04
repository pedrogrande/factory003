class CreateCourseRegistrations < ActiveRecord::Migration
  def change
    create_table :course_registrations do |t|
      t.references :course, index: true
      t.references :registration, index: true

      t.timestamps
    end
  end
end
