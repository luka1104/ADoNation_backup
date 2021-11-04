class CreatePointhistories < ActiveRecord::Migration[6.1]
  def change
    create_table :pointhistories do |t|

      t.timestamps
    end
  end
end
