class AddBookIdToBookInfos < ActiveRecord::Migration
  def change
    add_reference :book_infos, :book, index: true, foreign_key: true
  end
end
