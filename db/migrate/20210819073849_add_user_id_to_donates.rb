class AddUserIdToDonates < ActiveRecord::Migration[6.1]
  def change
    add_column :donates, :user_id, :integer
  end
end
