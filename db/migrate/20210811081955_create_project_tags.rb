class CreateProjectTags < ActiveRecord::Migration[6.1]
  def change
    create_table :project_tags do |t|
      t.string :tag

      t.timestamps
    end
  end
end
