class CreatePointBreakdowns < ActiveRecord::Migration[6.1]
  def change
    create_table :point_breakdowns do |t|
      t.integer :user_point_id
      t.integer :point_history_id
      t.integer :amount

      t.timestamps
    end
  end
end
