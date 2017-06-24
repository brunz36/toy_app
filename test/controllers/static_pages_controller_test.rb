require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Msg App"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get home title" do
    get static_pages_home_url
    assert_select 'title', "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get help title" do
    get static_pages_help_url
    assert_select 'title', "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get about title" do
    get static_pages_about_url
    assert_select 'title', "About | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should get contact title" do
    get static_pages_contact_url
    assert_select 'title', "Contact | #{@base_title}"
  end
end
