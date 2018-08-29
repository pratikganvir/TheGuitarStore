require 'test_helper'

class AccessoryTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accessory_type = accessory_types(:one)
  end

  test "should get index" do
    get accessory_types_url
    assert_response :success
  end

  test "should get new" do
    get new_accessory_type_url
    assert_response :success
  end

  test "should create accessory_type" do
    assert_difference('AccessoryType.count') do
      post accessory_types_url, params: { accessory_type: { accessory_id: @accessory_type.accessory_id, name: @accessory_type.name } }
    end

    assert_redirected_to accessory_type_url(AccessoryType.last)
  end

  test "should show accessory_type" do
    get accessory_type_url(@accessory_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_accessory_type_url(@accessory_type)
    assert_response :success
  end

  test "should update accessory_type" do
    patch accessory_type_url(@accessory_type), params: { accessory_type: { accessory_id: @accessory_type.accessory_id, name: @accessory_type.name } }
    assert_redirected_to accessory_type_url(@accessory_type)
  end

  test "should destroy accessory_type" do
    assert_difference('AccessoryType.count', -1) do
      delete accessory_type_url(@accessory_type)
    end

    assert_redirected_to accessory_types_url
  end
end
