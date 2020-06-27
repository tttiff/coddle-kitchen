require 'test_helper'

class IngredientHacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_hack = ingredient_hacks(:one)
  end

  test "should get index" do
    get ingredient_hacks_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_hack_url
    assert_response :success
  end

  test "should create ingredient_hack" do
    assert_difference('IngredientHack.count') do
      post ingredient_hacks_url, params: { ingredient_hack: { hack_category_id: @ingredient_hack.hack_category_id, hack_id: @ingredient_hack.hack_id, ingredient_preservation_id: @ingredient_hack.ingredient_preservation_id } }
    end

    assert_redirected_to ingredient_hack_url(IngredientHack.last)
  end

  test "should show ingredient_hack" do
    get ingredient_hack_url(@ingredient_hack)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_hack_url(@ingredient_hack)
    assert_response :success
  end

  test "should update ingredient_hack" do
    patch ingredient_hack_url(@ingredient_hack), params: { ingredient_hack: { hack_category_id: @ingredient_hack.hack_category_id, hack_id: @ingredient_hack.hack_id, ingredient_preservation_id: @ingredient_hack.ingredient_preservation_id } }
    assert_redirected_to ingredient_hack_url(@ingredient_hack)
  end

  test "should destroy ingredient_hack" do
    assert_difference('IngredientHack.count', -1) do
      delete ingredient_hack_url(@ingredient_hack)
    end

    assert_redirected_to ingredient_hacks_url
  end
end
