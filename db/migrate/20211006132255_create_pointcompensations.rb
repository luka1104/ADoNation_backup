class CreatePointcompensations < ActiveRecord::Migration[6.1]
  def change
    create_table :pointcompensations do |t|
      t.integer :user_id
      t.integer :amount
      t.string :explanation

      t.timestamps
    end
  end
end
