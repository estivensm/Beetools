require "application_system_test_case"

class ProcesTest < ApplicationSystemTestCase
  setup do
    @proce = proces(:one)
  end

  test "visiting the index" do
    visit proces_url
    assert_selector "h1", text: "Proces"
  end

  test "creating a Proce" do
    visit proces_url
    click_on "New Proce"

    fill_in "Admin user", with: @proce.admin_user
    fill_in "Description", with: @proce.description
    fill_in "Name", with: @proce.name
    fill_in "Proces type", with: @proce.proces_type
    fill_in "User", with: @proce.user_id
    click_on "Create Proce"

    assert_text "Proce was successfully created"
    click_on "Back"
  end

  test "updating a Proce" do
    visit proces_url
    click_on "Edit", match: :first

    fill_in "Admin user", with: @proce.admin_user
    fill_in "Description", with: @proce.description
    fill_in "Name", with: @proce.name
    fill_in "Proces type", with: @proce.proces_type
    fill_in "User", with: @proce.user_id
    click_on "Update Proce"

    assert_text "Proce was successfully updated"
    click_on "Back"
  end

  test "destroying a Proce" do
    visit proces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proce was successfully destroyed"
  end
end
