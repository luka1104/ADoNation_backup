class ChangeColmunsToDonates < ActiveRecord::Migration[6.1]
  def change
    change_column :donates, :title, :string, null: true
    change_column :donates, :donate_image, :string, null: true
    change_column :donates, :body, :text, null: true
    change_column :donates, :asp_money, :integer, null: true
    change_column :donates, :end_date, :integer, null: true
    change_column :donates, :donate_image_sub, :string, null: true
    change_column :donates, :video_url, :string, null: true
    change_column :donates, :perk_body, :string, null: true
    change_column :donates, :perk_image, :string, null: true
    change_column :donates, :perk_price, :integer, null: true
  end
end
