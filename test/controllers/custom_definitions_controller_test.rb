require "test_helper"

class CustomDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_definition = custom_definitions(:one)
  end

  test "should get index" do
    get custom_definitions_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_definition_url
    assert_response :success
  end

  test "should create custom_definition" do
    assert_difference('CustomDefinition.count') do
      post custom_definitions_url, params: { custom_definition: { name: @custom_definition.name, report_type: @custom_definition.report_type, site_id: @custom_definition.site_id } }
    end

    assert_redirected_to custom_definition_url(CustomDefinition.last)
  end

  test "should show custom_definition" do
    get custom_definition_url(@custom_definition)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_definition_url(@custom_definition)
    assert_response :success
  end

  test "should update custom_definition" do
    patch custom_definition_url(@custom_definition), params: { custom_definition: { name: @custom_definition.name, report_type: @custom_definition.report_type, site_id: @custom_definition.site_id } }
    assert_redirected_to custom_definition_url(@custom_definition)
  end

  test "should destroy custom_definition" do
    assert_difference('CustomDefinition.count', -1) do
      delete custom_definition_url(@custom_definition)
    end

    assert_redirected_to custom_definitions_url
  end
end
