class AddCosToDonates < ActiveRecord::Migration[6.1]
  def change
    add_column :donates, :donate_tag, :text
  end
end
