class CreatePointbreakdowns < ActiveRecord::Migration[6.1]
  def change
    create_table :pointbreakdowns do |t|

      t.timestamps
    end
  end
end
