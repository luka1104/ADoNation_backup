class ChangeColumnToPointhistories < ActiveRecord::Migration[6.1]
  def change
    remove_column :pointhistories, :user_id, :integer
    add_column :pointhistories, :donate_id, :integer
  end
end
