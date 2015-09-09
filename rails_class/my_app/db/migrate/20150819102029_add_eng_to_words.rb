class AddEngToWords < ActiveRecord::Migration
  def change
    add_column :words, :eng, :string
    add_column :words, :pl, :string
  end

	Word.new(eng:'yes', pl:'tak').save
	Word.new(eng:'no', pl:'nie').save
	Word.new(eng:'everything', pl:'wszystko').save
end
