require 'test_helper'

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get documents_url
    assert_response :success
  end

  test "should get new" do
    get new_document_url
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post documents_url, params: { document: { aprove_date: @document.aprove_date, coding: @document.coding, coding_type: @document.coding_type, create_date: @document.create_date, document_type_id: @document.document_type_id, footer: @document.footer, header: @document.header, is_last: @document.is_last, logo: @document.logo, process_id: @document.process_id, review: @document.review, review_date: @document.review_date, ubication_logo: @document.ubication_logo, user_aprove_id: @document.user_aprove_id, user_create_id: @document.user_create_id, user_id: @document.user_id, user_review_id: @document.user_review_id, version: @document.version } }
    end

    assert_redirected_to document_url(Document.last)
  end

  test "should show document" do
    get document_url(@document)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_url(@document)
    assert_response :success
  end

  test "should update document" do
    patch document_url(@document), params: { document: { aprove_date: @document.aprove_date, coding: @document.coding, coding_type: @document.coding_type, create_date: @document.create_date, document_type_id: @document.document_type_id, footer: @document.footer, header: @document.header, is_last: @document.is_last, logo: @document.logo, process_id: @document.process_id, review: @document.review, review_date: @document.review_date, ubication_logo: @document.ubication_logo, user_aprove_id: @document.user_aprove_id, user_create_id: @document.user_create_id, user_id: @document.user_id, user_review_id: @document.user_review_id, version: @document.version } }
    assert_redirected_to document_url(@document)
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete document_url(@document)
    end

    assert_redirected_to documents_url
  end
end
