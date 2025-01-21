class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.string :course_of_study
      t.string :level_of_study
      t.boolean :scholarship_availability
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
