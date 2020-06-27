require "application_system_test_case"

class IngredientPreservationsTest < ApplicationSystemTestCase
  setup do
    @ingredient_preservation = ingredient_preservations(:one)
  end

  test "visiting the index" do
    visit ingredient_preservations_url
    assert_selector "h1", text: "Ingredient Preservations"
  end

  test "creating a Ingredient preservation" do
    visit ingredient_preservations_url
    click_on "New Ingredient Preservation"

    fill_in "Days added", with: @ingredient_preservation.days_added
    fill_in "Ingredient", with: @ingredient_preservation.ingredient_id
    check "Initial state" if @ingredient_preservation.initial_state
    fill_in "Preservation", with: @ingredient_preservation.preservation_id
    click_on "Create Ingredient preservation"

    assert_text "Ingredient preservation was successfully created"
    click_on "Back"
  end

  test "updating a Ingredient preservation" do
    visit ingredient_preservations_url
    click_on "Edit", match: :first

    fill_in "Days added", with: @ingredient_preservation.days_added
    fill_in "Ingredient", with: @ingredient_preservation.ingredient_id
    check "Initial state" if @ingredient_preservation.initial_state
    fill_in "Preservation", with: @ingredient_preservation.preservation_id
    click_on "Update Ingredient preservation"

    assert_text "Ingredient preservation was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingredient preservation" do
    visit ingredient_preservations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingredient preservation was successfully destroyed"
  end
end
