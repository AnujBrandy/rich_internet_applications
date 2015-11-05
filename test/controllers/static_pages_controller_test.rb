require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get advice" do
    get :advice
    assert_response :success
  end

  test "should get search_result" do
    get :search_result
    assert_response :success
  end

end
