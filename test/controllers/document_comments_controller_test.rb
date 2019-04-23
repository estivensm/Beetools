require 'test_helper'

class DocumentCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get document_comments_create_url
    assert_response :success
  end

end
