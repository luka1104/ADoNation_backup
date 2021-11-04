class AddColumnToPointbreakdowns < ActiveRecord::Migration[6.1]
  def change
    add_column :pointbreakdowns, :user_id, :integer
    add_column :pointbreakdowns, :amount, :integer
    add_column :pointbreakdowns, :point_history_id, :integer
  end
end
