require 'test_helper'

class GuitarModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guitar_model = guitar_models(:one)
  end

  test "should get index" do
    get guitar_models_url
    assert_response :success
  end

  test "should get new" do
    get new_guitar_model_url
    assert_response :success
  end

  test "should create guitar_model" do
    assert_difference('GuitarModel.count') do
      post guitar_models_url, params: { guitar_model: { guitar_id: @guitar_model.guitar_id, name: @guitar_model.name } }
    end

    assert_redirected_to guitar_model_url(GuitarModel.last)
  end

  test "should show guitar_model" do
    get guitar_model_url(@guitar_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_guitar_model_url(@guitar_model)
    assert_response :success
  end

  test "should update guitar_model" do
    patch guitar_model_url(@guitar_model), params: { guitar_model: { guitar_id: @guitar_model.guitar_id, name: @guitar_model.name } }
    assert_redirected_to guitar_model_url(@guitar_model)
  end

  test "should destroy guitar_model" do
    assert_difference('GuitarModel.count', -1) do
      delete guitar_model_url(@guitar_model)
    end

    assert_redirected_to guitar_models_url
  end
end
