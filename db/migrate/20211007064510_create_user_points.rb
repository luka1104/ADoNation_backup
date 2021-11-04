class CreateUserPoints < ActiveRecord::Migration[6.1]
  def change
    create_table :user_points do |t|
      t.integer :user_id
      t.integer :amount
      t.date :expired_at

      t.timestamps
    end
  end
end
