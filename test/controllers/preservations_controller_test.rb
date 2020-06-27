require 'test_helper'

class PreservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preservation = preservations(:one)
  end

  test "should get index" do
    get preservations_url
    assert_response :success
  end

  test "should get new" do
    get new_preservation_url
    assert_response :success
  end

  test "should create preservation" do
    assert_difference('Preservation.count') do
      post preservations_url, params: { preservation: { description: @preservation.description, method: @preservation.method } }
    end

    assert_redirected_to preservation_url(Preservation.last)
  end

  test "should show preservation" do
    get preservation_url(@preservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_preservation_url(@preservation)
    assert_response :success
  end

  test "should update preservation" do
    patch preservation_url(@preservation), params: { preservation: { description: @preservation.description, method: @preservation.method } }
    assert_redirected_to preservation_url(@preservation)
  end

  test "should destroy preservation" do
    assert_difference('Preservation.count', -1) do
      delete preservation_url(@preservation)
    end

    assert_redirected_to preservations_url
  end
end
