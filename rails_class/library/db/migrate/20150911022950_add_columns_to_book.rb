class AddColumnsToBook < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :price, :float
  end
end
