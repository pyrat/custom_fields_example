require "test_helper"

class CustomDefinitionValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_definition_value = custom_definition_values(:one)
  end

  test "should get index" do
    get custom_definition_values_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_definition_value_url
    assert_response :success
  end

  test "should create custom_definition_value" do
    assert_difference('CustomDefinitionValue.count') do
      post custom_definition_values_url, params: { custom_definition_value: { content: @custom_definition_value.content, custom_definition_id: @custom_definition_value.custom_definition_id, report_id: @custom_definition_value.report_id } }
    end

    assert_redirected_to custom_definition_value_url(CustomDefinitionValue.last)
  end

  test "should show custom_definition_value" do
    get custom_definition_value_url(@custom_definition_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_definition_value_url(@custom_definition_value)
    assert_response :success
  end

  test "should update custom_definition_value" do
    patch custom_definition_value_url(@custom_definition_value), params: { custom_definition_value: { content: @custom_definition_value.content, custom_definition_id: @custom_definition_value.custom_definition_id, report_id: @custom_definition_value.report_id } }
    assert_redirected_to custom_definition_value_url(@custom_definition_value)
  end

  test "should destroy custom_definition_value" do
    assert_difference('CustomDefinitionValue.count', -1) do
      delete custom_definition_value_url(@custom_definition_value)
    end

    assert_redirected_to custom_definition_values_url
  end
end
