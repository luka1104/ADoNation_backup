class AddColumnToDonatepoints < ActiveRecord::Migration[6.1]
  def change
    add_column :donatepoints, :user_id, :integer
    add_column :donatepoints, :amount, :string
    add_column :donatepoints, :expired_at, :date
  end
end
