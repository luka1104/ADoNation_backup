class CreatePointCompensations < ActiveRecord::Migration[6.1]
  def change
    create_table :point_compensations do |t|
      t.integer :admin_id
      t.integer :amount
      t.string :explanation

      t.timestamps
    end
  end
end
