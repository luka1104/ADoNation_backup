class ChangeColumnToPointcompensations < ActiveRecord::Migration[6.1]
  def change
    remove_column :pointcompensations, :user_id, :integer
    add_column :pointcompensations, :donate_id, :integer
  end
end
