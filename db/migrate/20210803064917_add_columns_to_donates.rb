class AddColumnsToDonates < ActiveRecord::Migration[6.1]
  def change
    add_column :donates, :asp_money, :integer
    add_column :donates, :end_date, :date
    add_column :donates, :donate_image_sub, :string
    add_column :donates, :perk_price, :integer
    add_column :donates, :perk_body, :text
    add_column :donates, :perk_image, :string
    add_column :donates, :video_url, :string
  end
end
