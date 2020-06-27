require "application_system_test_case"

class HackCategoriesTest < ApplicationSystemTestCase
  setup do
    @hack_category = hack_categories(:one)
  end

  test "visiting the index" do
    visit hack_categories_url
    assert_selector "h1", text: "Hack Categories"
  end

  test "creating a Hack category" do
    visit hack_categories_url
    click_on "New Hack Category"

    fill_in "Description", with: @hack_category.description
    fill_in "Name", with: @hack_category.name
    click_on "Create Hack category"

    assert_text "Hack category was successfully created"
    click_on "Back"
  end

  test "updating a Hack category" do
    visit hack_categories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @hack_category.description
    fill_in "Name", with: @hack_category.name
    click_on "Update Hack category"

    assert_text "Hack category was successfully updated"
    click_on "Back"
  end

  test "destroying a Hack category" do
    visit hack_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hack category was successfully destroyed"
  end
end
