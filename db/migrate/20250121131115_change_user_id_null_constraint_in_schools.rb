class ChangeUserIdNullConstraintInSchools < ActiveRecord::Migration[7.1]
  def change
    change_column_null :schools, :user_id, true
  end
end
