require "application_system_test_case"

class CustomDefinitionValuesTest < ApplicationSystemTestCase
  setup do
    @custom_definition_value = custom_definition_values(:one)
  end

  test "visiting the index" do
    visit custom_definition_values_url
    assert_selector "h1", text: "Custom Definition Values"
  end

  test "creating a Custom definition value" do
    visit custom_definition_values_url
    click_on "New Custom Definition Value"

    fill_in "Content", with: @custom_definition_value.content
    fill_in "Custom definition", with: @custom_definition_value.custom_definition_id
    fill_in "Report", with: @custom_definition_value.report_id
    click_on "Create Custom definition value"

    assert_text "Custom definition value was successfully created"
    click_on "Back"
  end

  test "updating a Custom definition value" do
    visit custom_definition_values_url
    click_on "Edit", match: :first

    fill_in "Content", with: @custom_definition_value.content
    fill_in "Custom definition", with: @custom_definition_value.custom_definition_id
    fill_in "Report", with: @custom_definition_value.report_id
    click_on "Update Custom definition value"

    assert_text "Custom definition value was successfully updated"
    click_on "Back"
  end

  test "destroying a Custom definition value" do
    visit custom_definition_values_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custom definition value was successfully destroyed"
  end
end
