require 'test_helper'

class CreatedFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @created_field = created_fields(:one)
  end

  test "should get index" do
    get created_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_created_field_url
    assert_response :success
  end

  test "should create created_field" do
    assert_difference('CreatedField.count') do
      post created_fields_url, params: { created_field: { admin_user: @created_field.admin_user, content: @created_field.content, document_id: @created_field.document_id, field_id: @created_field.field_id, user_id: @created_field.user_id } }
    end

    assert_redirected_to created_field_url(CreatedField.last)
  end

  test "should show created_field" do
    get created_field_url(@created_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_created_field_url(@created_field)
    assert_response :success
  end

  test "should update created_field" do
    patch created_field_url(@created_field), params: { created_field: { admin_user: @created_field.admin_user, content: @created_field.content, document_id: @created_field.document_id, field_id: @created_field.field_id, user_id: @created_field.user_id } }
    assert_redirected_to created_field_url(@created_field)
  end

  test "should destroy created_field" do
    assert_difference('CreatedField.count', -1) do
      delete created_field_url(@created_field)
    end

    assert_redirected_to created_fields_url
  end
end
