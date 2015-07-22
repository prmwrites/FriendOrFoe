require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | Friend or Foe"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Friend or Foe"
  end

  test "should get countries" do
    get :countries
    assert_response :success
    assert_select "title", "Countries | Friend or Foe"
  end
end