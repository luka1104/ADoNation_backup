class ChangeColumnToAdviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :adviews, :user_id, :integer
    add_column :adviews, :donate_id, :integer
  end
end
