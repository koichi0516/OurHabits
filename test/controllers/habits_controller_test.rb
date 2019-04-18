require 'test_helper'

class HabitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get habits_index_url
    assert_response :success
  end

  test "should get show" do
    get habits_show_url
    assert_response :success
  end

  test "should get add" do
    get habits_add_url
    assert_response :success
  end

  test "should get today" do
    get habits_today_url
    assert_response :success
  end

  test "should get submit" do
    get habits_submit_url
    assert_response :success
  end

  test "should get destroy" do
    get habits_destroy_url
    assert_response :success
  end

  test "should get rank" do
    get habits_rank_url
    assert_response :success
  end

  test "should get edit" do
    get habits_edit_url
    assert_response :success
  end

  test "should get update" do
    get habits_update_url
    assert_response :success
  end

end