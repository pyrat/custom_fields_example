require "application_system_test_case"

class CustomDefinitionsTest < ApplicationSystemTestCase
  setup do
    @custom_definition = custom_definitions(:one)
  end

  test "visiting the index" do
    visit custom_definitions_url
    assert_selector "h1", text: "Custom Definitions"
  end

  test "creating a Custom definition" do
    visit custom_definitions_url
    click_on "New Custom Definition"

    fill_in "Name", with: @custom_definition.name
    fill_in "Report type", with: @custom_definition.report_type
    fill_in "Site", with: @custom_definition.site_id
    click_on "Create Custom definition"

    assert_text "Custom definition was successfully created"
    click_on "Back"
  end

  test "updating a Custom definition" do
    visit custom_definitions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @custom_definition.name
    fill_in "Report type", with: @custom_definition.report_type
    fill_in "Site", with: @custom_definition.site_id
    click_on "Update Custom definition"

    assert_text "Custom definition was successfully updated"
    click_on "Back"
  end

  test "destroying a Custom definition" do
    visit custom_definitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custom definition was successfully destroyed"
  end
end
