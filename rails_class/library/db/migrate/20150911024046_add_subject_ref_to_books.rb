class AddSubjectRefToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :subject, index: true, foreign_key: true
  end
end
