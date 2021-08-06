class ChangeDataEndDateToDonates < ActiveRecord::Migration[6.1]
  def change
    change_column :donates, :end_date, :integer
  end
end
