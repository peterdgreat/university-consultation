class AddCalendlyLinkToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :calendly_link, :string
  end
end
