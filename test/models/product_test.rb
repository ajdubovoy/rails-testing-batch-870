require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "#full_name returns the first and last names capitalized" do
    john = User.new(first_name: "john", last_name: "lennon")

    assert_equal "John Lennon", john.full_name
  end

  test "#full_name returns the first name capitalized" do
    john = User.new(first_name: "john")

    assert_equal "John", john.full_name
  end
end
