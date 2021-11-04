class CreateAdviews < ActiveRecord::Migration[6.1]
  def change
    create_table :adviews do |t|
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end
