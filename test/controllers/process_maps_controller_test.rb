require 'test_helper'

class ProcessMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_map = process_maps(:one)
  end

  test "should get index" do
    get process_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_process_map_url
    assert_response :success
  end

  test "should create process_map" do
    assert_difference('ProcessMap.count') do
      post process_maps_url, params: { process_map: { admin_user: @process_map.admin_user, file: @process_map.file, user_id: @process_map.user_id, version: @process_map.version } }
    end

    assert_redirected_to process_map_url(ProcessMap.last)
  end

  test "should show process_map" do
    get process_map_url(@process_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_map_url(@process_map)
    assert_response :success
  end

  test "should update process_map" do
    patch process_map_url(@process_map), params: { process_map: { admin_user: @process_map.admin_user, file: @process_map.file, user_id: @process_map.user_id, version: @process_map.version } }
    assert_redirected_to process_map_url(@process_map)
  end

  test "should destroy process_map" do
    assert_difference('ProcessMap.count', -1) do
      delete process_map_url(@process_map)
    end

    assert_redirected_to process_maps_url
  end
end
