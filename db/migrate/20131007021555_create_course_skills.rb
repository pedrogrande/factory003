class CreateCourseSkills < ActiveRecord::Migration
  def change
    create_table :course_skills do |t|
      t.references :course
      t.references :skill

      t.timestamps
    end
    add_index :course_skills, :course_id
    add_index :course_skills, :skill_id
  end
end
