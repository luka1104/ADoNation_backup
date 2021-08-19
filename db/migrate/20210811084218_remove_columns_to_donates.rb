class RemoveColumnsToDonates < ActiveRecord::Migration[6.1]
  def change
    remove_column :donates, :project_tag, :string
  end
end
