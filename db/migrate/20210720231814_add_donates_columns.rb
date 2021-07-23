class AddDonatesColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :donates, :description, :text
  end
end
