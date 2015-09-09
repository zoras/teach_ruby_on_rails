require 'test_helper'

class WordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "word is english and polish" do
    word = Word.new(:eng=>'never', :pl=>'nigdy')
    assert_equal 'never', word.eng
    assert_equal 'nigdy', word.pl
  end
end
