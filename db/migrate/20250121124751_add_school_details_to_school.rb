class AddSchoolDetailsToSchool < ActiveRecord::Migration[7.1]
  def change
    add_column :schools, :name, :string
    add_column :schools, :intake_date, :date
    add_column :schools, :duration, :string
    add_column :schools, :description, :text
    add_column :schools, :fees, :string
    add_column :schools, :deadline, :date
  end
end
