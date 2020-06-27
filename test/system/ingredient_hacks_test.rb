require "application_system_test_case"

class IngredientHacksTest < ApplicationSystemTestCase
  setup do
    @ingredient_hack = ingredient_hacks(:one)
  end

  test "visiting the index" do
    visit ingredient_hacks_url
    assert_selector "h1", text: "Ingredient Hacks"
  end

  test "creating a Ingredient hack" do
    visit ingredient_hacks_url
    click_on "New Ingredient Hack"

    fill_in "Hack category", with: @ingredient_hack.hack_category_id
    fill_in "Hack", with: @ingredient_hack.hack_id
    fill_in "Ingredient preservation", with: @ingredient_hack.ingredient_preservation_id
    click_on "Create Ingredient hack"

    assert_text "Ingredient hack was successfully created"
    click_on "Back"
  end

  test "updating a Ingredient hack" do
    visit ingredient_hacks_url
    click_on "Edit", match: :first

    fill_in "Hack category", with: @ingredient_hack.hack_category_id
    fill_in "Hack", with: @ingredient_hack.hack_id
    fill_in "Ingredient preservation", with: @ingredient_hack.ingredient_preservation_id
    click_on "Update Ingredient hack"

    assert_text "Ingredient hack was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingredient hack" do
    visit ingredient_hacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingredient hack was successfully destroyed"
  end
end
