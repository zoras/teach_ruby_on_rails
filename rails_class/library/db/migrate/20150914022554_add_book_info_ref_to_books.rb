class AddBookInfoRefToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :book_info, index: true, foreign_key: true
  end
end
