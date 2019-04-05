require "application_system_test_case"

class ProcessMapsTest < ApplicationSystemTestCase
  setup do
    @process_map = process_maps(:one)
  end

  test "visiting the index" do
    visit process_maps_url
    assert_selector "h1", text: "Process Maps"
  end

  test "creating a Process map" do
    visit process_maps_url
    click_on "New Process Map"

    fill_in "Admin user", with: @process_map.admin_user
    fill_in "File", with: @process_map.file
    fill_in "User", with: @process_map.user_id
    fill_in "Version", with: @process_map.version
    click_on "Create Process map"

    assert_text "Process map was successfully created"
    click_on "Back"
  end

  test "updating a Process map" do
    visit process_maps_url
    click_on "Edit", match: :first

    fill_in "Admin user", with: @process_map.admin_user
    fill_in "File", with: @process_map.file
    fill_in "User", with: @process_map.user_id
    fill_in "Version", with: @process_map.version
    click_on "Update Process map"

    assert_text "Process map was successfully updated"
    click_on "Back"
  end

  test "destroying a Process map" do
    visit process_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Process map was successfully destroyed"
  end
end
