class AddColumnsToDonateProjectTags < ActiveRecord::Migration[6.1]
  def change
    add_column :donate_project_tags, :tag_id, :integer
    add_column :donate_project_tags, :donate_id, :integer
  end
end
