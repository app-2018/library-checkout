require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "should not save book without a title" do
    book = Book.new
    assert_not book.save, "Saved a book without a title"
  end
end
