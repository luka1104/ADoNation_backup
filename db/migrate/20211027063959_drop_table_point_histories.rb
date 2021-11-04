class DropTablePointHistories < ActiveRecord::Migration[6.1]
  def change
    drop_table :point_histories
  end
end
