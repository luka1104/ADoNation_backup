class CreateDonatepoints < ActiveRecord::Migration[6.1]
  def change
    create_table :donatepoints do |t|

      t.timestamps
    end
  end
end
