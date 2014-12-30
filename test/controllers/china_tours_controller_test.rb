require 'test_helper'

class ChinaToursControllerTest < ActionController::TestCase
  test "should get reason" do
    get :reason
    assert_response :success
  end

  test "should get service" do
    get :service
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

end
