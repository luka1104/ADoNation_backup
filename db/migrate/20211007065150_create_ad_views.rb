class CreateAdViews < ActiveRecord::Migration[6.1]
  def change
    create_table :ad_views do |t|
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end
