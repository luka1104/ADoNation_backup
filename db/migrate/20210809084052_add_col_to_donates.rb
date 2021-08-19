class AddColToDonates < ActiveRecord::Migration[6.1]
  def change
    add_column :donates, :collect_type, :string
    add_column :donates, :project_category, :string
    add_column :donates, :connection_area, :string
    add_column :donates, :project_tag, :string
  end
end
