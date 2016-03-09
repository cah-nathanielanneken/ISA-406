require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get invalid_user" do
    get :invalid_user
    assert_response :success
  end

end
