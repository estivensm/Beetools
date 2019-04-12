require "application_system_test_case"

class DocumentsTest < ApplicationSystemTestCase
  setup do
    @document = documents(:one)
  end

  test "visiting the index" do
    visit documents_url
    assert_selector "h1", text: "Documents"
  end

  test "creating a Document" do
    visit documents_url
    click_on "New Document"

    fill_in "Aprove date", with: @document.aprove_date
    fill_in "Coding", with: @document.coding
    fill_in "Coding type", with: @document.coding_type
    fill_in "Create date", with: @document.create_date
    fill_in "Document type", with: @document.document_type_id
    fill_in "Footer", with: @document.footer
    fill_in "Header", with: @document.header
    check "Is last" if @document.is_last
    fill_in "Logo", with: @document.logo
    fill_in "Process", with: @document.process_id
    fill_in "Review", with: @document.review
    fill_in "Review date", with: @document.review_date
    fill_in "Ubication logo", with: @document.ubication_logo
    fill_in "User aprove", with: @document.user_aprove_id
    fill_in "User create", with: @document.user_create_id
    fill_in "User", with: @document.user_id
    fill_in "User review", with: @document.user_review_id
    fill_in "Version", with: @document.version
    click_on "Create Document"

    assert_text "Document was successfully created"
    click_on "Back"
  end

  test "updating a Document" do
    visit documents_url
    click_on "Edit", match: :first

    fill_in "Aprove date", with: @document.aprove_date
    fill_in "Coding", with: @document.coding
    fill_in "Coding type", with: @document.coding_type
    fill_in "Create date", with: @document.create_date
    fill_in "Document type", with: @document.document_type_id
    fill_in "Footer", with: @document.footer
    fill_in "Header", with: @document.header
    check "Is last" if @document.is_last
    fill_in "Logo", with: @document.logo
    fill_in "Process", with: @document.process_id
    fill_in "Review", with: @document.review
    fill_in "Review date", with: @document.review_date
    fill_in "Ubication logo", with: @document.ubication_logo
    fill_in "User aprove", with: @document.user_aprove_id
    fill_in "User create", with: @document.user_create_id
    fill_in "User", with: @document.user_id
    fill_in "User review", with: @document.user_review_id
    fill_in "Version", with: @document.version
    click_on "Update Document"

    assert_text "Document was successfully updated"
    click_on "Back"
  end

  test "destroying a Document" do
    visit documents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Document was successfully destroyed"
  end
end
