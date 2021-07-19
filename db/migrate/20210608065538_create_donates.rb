class CreateDonates < ActiveRecord::Migration[6.1]
  def change
    create_table :donates do |t|
      t.string :title
      t.string :donate_image
      t.text :body

      t.timestamps
    end
  end
end
