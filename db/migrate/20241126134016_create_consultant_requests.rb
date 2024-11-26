class CreateConsultantRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :consultant_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status, default: 'pending'
      t.timestamps
    end
  end
end
