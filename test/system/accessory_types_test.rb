require "application_system_test_case"

class AccessoryTypesTest < ApplicationSystemTestCase
  setup do
    @accessory_type = accessory_types(:one)
  end

  test "visiting the index" do
    visit accessory_types_url
    assert_selector "h1", text: "Accessory Types"
  end

  test "creating a Accessory type" do
    visit accessory_types_url
    click_on "New Accessory Type"

    fill_in "Accessory", with: @accessory_type.accessory_id
    fill_in "Name", with: @accessory_type.name
    click_on "Create Accessory type"

    assert_text "Accessory type was successfully created"
    click_on "Back"
  end

  test "updating a Accessory type" do
    visit accessory_types_url
    click_on "Edit", match: :first

    fill_in "Accessory", with: @accessory_type.accessory_id
    fill_in "Name", with: @accessory_type.name
    click_on "Update Accessory type"

    assert_text "Accessory type was successfully updated"
    click_on "Back"
  end

  test "destroying a Accessory type" do
    visit accessory_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accessory type was successfully destroyed"
  end
end
