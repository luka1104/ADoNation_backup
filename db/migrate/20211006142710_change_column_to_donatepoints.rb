class ChangeColumnToDonatepoints < ActiveRecord::Migration[6.1]
  def change
    remove_column :donatepoints, :user_id, :integer
    add_column :donatepoints, :donate_id, :integer
  end
end
