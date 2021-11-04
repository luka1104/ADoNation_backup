class ChangeColumnToPointbreakdowns < ActiveRecord::Migration[6.1]
  def change
    remove_column :pointbreakdowns, :user_point_id, :integer
    add_column :pointbreakdowns, :donate_point_id, :integer
  end
end
