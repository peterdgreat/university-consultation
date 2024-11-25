class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :price
      t.text :features

      t.timestamps
    end
  end
end