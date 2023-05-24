require "test_helper"

class PlantControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get plant_new_url
    assert_response :success
  end

  test "should get create" do
    get plant_create_url
    assert_response :success
  end

  test "should get edit" do
    get plant_edit_url
    assert_response :success
  end

  test "should get update" do
    get plant_update_url
    assert_response :success
  end

  test "should get destroy" do
    get plant_destroy_url
    assert_response :success
  end
end
