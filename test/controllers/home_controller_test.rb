require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get question" do
    get :question
    assert_response :success
  end

  test "should get answer" do
    get :answer
    assert_response :success
  end

  test "should get upvote" do
    get :upvote
    assert_response :success
  end

end
