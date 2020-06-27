require 'test_helper'

class IngredientPreservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_preservation = ingredient_preservations(:one)
  end

  test "should get index" do
    get ingredient_preservations_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_preservation_url
    assert_response :success
  end

  test "should create ingredient_preservation" do
    assert_difference('IngredientPreservation.count') do
      post ingredient_preservations_url, params: { ingredient_preservation: { days_added: @ingredient_preservation.days_added, ingredient_id: @ingredient_preservation.ingredient_id, initial_state: @ingredient_preservation.initial_state, preservation_id: @ingredient_preservation.preservation_id } }
    end

    assert_redirected_to ingredient_preservation_url(IngredientPreservation.last)
  end

  test "should show ingredient_preservation" do
    get ingredient_preservation_url(@ingredient_preservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_preservation_url(@ingredient_preservation)
    assert_response :success
  end

  test "should update ingredient_preservation" do
    patch ingredient_preservation_url(@ingredient_preservation), params: { ingredient_preservation: { days_added: @ingredient_preservation.days_added, ingredient_id: @ingredient_preservation.ingredient_id, initial_state: @ingredient_preservation.initial_state, preservation_id: @ingredient_preservation.preservation_id } }
    assert_redirected_to ingredient_preservation_url(@ingredient_preservation)
  end

  test "should destroy ingredient_preservation" do
    assert_difference('IngredientPreservation.count', -1) do
      delete ingredient_preservation_url(@ingredient_preservation)
    end

    assert_redirected_to ingredient_preservations_url
  end
end
