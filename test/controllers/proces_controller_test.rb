require 'test_helper'

class ProcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proce = proces(:one)
  end

  test "should get index" do
    get proces_url
    assert_response :success
  end

  test "should get new" do
    get new_proce_url
    assert_response :success
  end

  test "should create proce" do
    assert_difference('Proce.count') do
      post proces_url, params: { proce: { admin_user: @proce.admin_user, description: @proce.description, name: @proce.name, proces_type: @proce.proces_type, user_id: @proce.user_id } }
    end

    assert_redirected_to proce_url(Proce.last)
  end

  test "should show proce" do
    get proce_url(@proce)
    assert_response :success
  end

  test "should get edit" do
    get edit_proce_url(@proce)
    assert_response :success
  end

  test "should update proce" do
    patch proce_url(@proce), params: { proce: { admin_user: @proce.admin_user, description: @proce.description, name: @proce.name, proces_type: @proce.proces_type, user_id: @proce.user_id } }
    assert_redirected_to proce_url(@proce)
  end

  test "should destroy proce" do
    assert_difference('Proce.count', -1) do
      delete proce_url(@proce)
    end

    assert_redirected_to proces_url
  end
end
