require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get chatroom" do
    get messages_chatroom_url
    assert_response :success
  end

end
