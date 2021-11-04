class AddColumnToPointhistories < ActiveRecord::Migration[6.1]
  def change
    add_column :pointhistories, :user_id, :integer
    add_column :pointhistories, :amount, :integer
    add_column :pointhistories, :type, :string
    add_column :pointhistories, :type_id, :integer
  end
end
