require "test_helper"

class YoutubeApiControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get youtube_api_new_url
    assert_response :success
  end
end
