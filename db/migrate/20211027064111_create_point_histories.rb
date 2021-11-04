class CreatePointHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :point_histories do |t|
      t.integer :user_id
      t.integer :amount
      t.string :type
      t.integer :type_id
      t.references :pointable, null: false, polymorphic: true

      t.timestamps
    end
  end
end
