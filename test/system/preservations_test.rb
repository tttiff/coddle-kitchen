require "application_system_test_case"

class PreservationsTest < ApplicationSystemTestCase
  setup do
    @preservation = preservations(:one)
  end

  test "visiting the index" do
    visit preservations_url
    assert_selector "h1", text: "Preservations"
  end

  test "creating a Preservation" do
    visit preservations_url
    click_on "New Preservation"

    fill_in "Description", with: @preservation.description
    fill_in "Method", with: @preservation.method
    click_on "Create Preservation"

    assert_text "Preservation was successfully created"
    click_on "Back"
  end

  test "updating a Preservation" do
    visit preservations_url
    click_on "Edit", match: :first

    fill_in "Description", with: @preservation.description
    fill_in "Method", with: @preservation.method
    click_on "Update Preservation"

    assert_text "Preservation was successfully updated"
    click_on "Back"
  end

  test "destroying a Preservation" do
    visit preservations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Preservation was successfully destroyed"
  end
end
