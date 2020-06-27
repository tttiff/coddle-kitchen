require 'test_helper'

class HackCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hack_category = hack_categories(:one)
  end

  test "should get index" do
    get hack_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_hack_category_url
    assert_response :success
  end

  test "should create hack_category" do
    assert_difference('HackCategory.count') do
      post hack_categories_url, params: { hack_category: { description: @hack_category.description, name: @hack_category.name } }
    end

    assert_redirected_to hack_category_url(HackCategory.last)
  end

  test "should show hack_category" do
    get hack_category_url(@hack_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_hack_category_url(@hack_category)
    assert_response :success
  end

  test "should update hack_category" do
    patch hack_category_url(@hack_category), params: { hack_category: { description: @hack_category.description, name: @hack_category.name } }
    assert_redirected_to hack_category_url(@hack_category)
  end

  test "should destroy hack_category" do
    assert_difference('HackCategory.count', -1) do
      delete hack_category_url(@hack_category)
    end

    assert_redirected_to hack_categories_url
  end
end
