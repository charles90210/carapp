require 'test_helper'

class CarControllerTest < ActionController::TestCase
  test "should get simulator" do
    get :simulator
    assert_response :success
  end

end
