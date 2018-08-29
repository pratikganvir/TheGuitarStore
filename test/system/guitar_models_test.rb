require "application_system_test_case"

class GuitarModelsTest < ApplicationSystemTestCase
  setup do
    @guitar_model = guitar_models(:one)
  end

  test "visiting the index" do
    visit guitar_models_url
    assert_selector "h1", text: "Guitar Models"
  end

  test "creating a Guitar model" do
    visit guitar_models_url
    click_on "New Guitar Model"

    fill_in "Guitar", with: @guitar_model.guitar_id
    fill_in "Name", with: @guitar_model.name
    click_on "Create Guitar model"

    assert_text "Guitar model was successfully created"
    click_on "Back"
  end

  test "updating a Guitar model" do
    visit guitar_models_url
    click_on "Edit", match: :first

    fill_in "Guitar", with: @guitar_model.guitar_id
    fill_in "Name", with: @guitar_model.name
    click_on "Update Guitar model"

    assert_text "Guitar model was successfully updated"
    click_on "Back"
  end

  test "destroying a Guitar model" do
    visit guitar_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guitar model was successfully destroyed"
  end
end
