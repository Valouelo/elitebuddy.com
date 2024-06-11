require "test_helper"

class BuddiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buddies_index_url
    assert_response :success
  end

  test "should get show" do
    get buddies_show_url
    assert_response :success
  end

  test "should get new" do
    get buddies_new_url
    assert_response :success
  end

  test "should get create" do
    get buddies_create_url
    assert_response :success
  end
end
