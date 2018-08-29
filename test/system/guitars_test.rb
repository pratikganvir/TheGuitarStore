require "application_system_test_case"

class GuitarsTest < ApplicationSystemTestCase
  setup do
    @guitar = guitars(:one)
  end

  test "visiting the index" do
    visit guitars_url
    assert_selector "h1", text: "Guitars"
  end

  test "creating a Guitar" do
    visit guitars_url
    click_on "New Guitar"

    fill_in "Brand", with: @guitar.brand_id
    fill_in "Guitar Type", with: @guitar.guitar_type
    fill_in "No Of Strings", with: @guitar.no_of_strings
    fill_in "Price", with: @guitar.price
    fill_in "Purchase Date", with: @guitar.purchase_date
    fill_in "Serial Number", with: @guitar.serial_number
    fill_in "Sold Date", with: @guitar.sold_date
    click_on "Create Guitar"

    assert_text "Guitar was successfully created"
    click_on "Back"
  end

  test "updating a Guitar" do
    visit guitars_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @guitar.brand_id
    fill_in "Guitar Type", with: @guitar.guitar_type
    fill_in "No Of Strings", with: @guitar.no_of_strings
    fill_in "Price", with: @guitar.price
    fill_in "Purchase Date", with: @guitar.purchase_date
    fill_in "Serial Number", with: @guitar.serial_number
    fill_in "Sold Date", with: @guitar.sold_date
    click_on "Update Guitar"

    assert_text "Guitar was successfully updated"
    click_on "Back"
  end

  test "destroying a Guitar" do
    visit guitars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guitar was successfully destroyed"
  end
end
