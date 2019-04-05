require "application_system_test_case"

class CreatedFieldsTest < ApplicationSystemTestCase
  setup do
    @created_field = created_fields(:one)
  end

  test "visiting the index" do
    visit created_fields_url
    assert_selector "h1", text: "Created Fields"
  end

  test "creating a Created field" do
    visit created_fields_url
    click_on "New Created Field"

    fill_in "Admin user", with: @created_field.admin_user
    fill_in "Content", with: @created_field.content
    fill_in "Document", with: @created_field.document_id
    fill_in "Field", with: @created_field.field_id
    fill_in "User", with: @created_field.user_id
    click_on "Create Created field"

    assert_text "Created field was successfully created"
    click_on "Back"
  end

  test "updating a Created field" do
    visit created_fields_url
    click_on "Edit", match: :first

    fill_in "Admin user", with: @created_field.admin_user
    fill_in "Content", with: @created_field.content
    fill_in "Document", with: @created_field.document_id
    fill_in "Field", with: @created_field.field_id
    fill_in "User", with: @created_field.user_id
    click_on "Update Created field"

    assert_text "Created field was successfully updated"
    click_on "Back"
  end

  test "destroying a Created field" do
    visit created_fields_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Created field was successfully destroyed"
  end
end
