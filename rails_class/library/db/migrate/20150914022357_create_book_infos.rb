class CreateBookInfos < ActiveRecord::Migration
  def change
    create_table :book_infos do |t|
      t.text :toc
      t.string :isbn

      t.timestamps null: false
    end
  end
end
