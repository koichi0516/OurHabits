require 'test_helper'

class UserHabitsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_habits_show_url
    assert_response :success
  end

  test "should get today" do
    get user_habits_today_url
    assert_response :success
  end

  test "should get submit" do
    get user_habits_submit_url
    assert_response :success
  end

  test "should get destroy" do
    get user_habits_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get user_habits_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_habits_update_url
    assert_response :success
  end

end
