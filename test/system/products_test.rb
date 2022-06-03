require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit products_url
  #
  #   assert_selector "h1", text: "Product"
  # end

  test "visiting the homepage" do
    visit "/"
    # save_and_open_screenshot

    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "adding a new product" do
    login_as users(:george) # users(:george) is that instance

    visit "/products/new"
    # save_and_open_screenshot

    fill_in "product_name", with: "Capybara Machine"
    fill_in "product_tagline", with: "Manage your capybaras"

    click_on "Create Product"
    # save_and_open_screenshot

    assert_text "Capybara Machine"
    assert_text "Manage your capybaras"
  end
end
