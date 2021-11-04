class AddOwnerInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :description, :text
    add_column :users, :owner_area, :string
    add_column :users, :page_link, :string
    add_column :users, :sns_link, :string
  end
end
