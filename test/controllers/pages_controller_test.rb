require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get expired" do
    get :expired
    assert_response :success
  end

end
