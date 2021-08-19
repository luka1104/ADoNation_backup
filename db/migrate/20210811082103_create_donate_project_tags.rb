class CreateDonateProjectTags < ActiveRecord::Migration[6.1]
  def change
    create_table :donate_project_tags do |t|

      t.timestamps
    end
  end
end
