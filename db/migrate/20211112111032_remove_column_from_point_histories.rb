class RemoveColumnFromPointHistories < ActiveRecord::Migration[6.1]
  def change
    remove_column :point_histories, :pointable_id, :integer
    remove_column :point_histories, :pointable_id, :index, name: "index_point_histories_on_pointable_id"
  end
end
