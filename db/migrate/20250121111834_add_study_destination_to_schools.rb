class AddStudyDestinationToSchools < ActiveRecord::Migration[7.1]
  def change
    add_column :schools, :study_destination, :string
  end
end
