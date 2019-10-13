require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    get contact_path
    assert_select "title", full_title("Contact")
  end

  # ログインユーザー区別なし
  test "logout user can go to ..." do
    get root_path
    assert_template 'static_pages/home'
    get help_path
    assert_template 'static_pages/help'
    get login_path
    assert_template 'sessions/new'
    get signup_path
    assert_template 'users/new'
    get users_path
    assert_not flash.empty?
    assert_redirected_to login_url
    get user_path @user
    assert_not flash.empty?
    assert_redirected_to login_url
    get edit_user_path @user
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "login user can go to ..." do
    log_in_as @user
    get root_path
    assert_template 'static_pages/home'
    get help_path
    assert_template 'static_pages/help'
    get login_path
    assert_template 'sessions/new'
    get signup_path
    assert_template 'users/new'
    get users_path
    assert_template 'users/index'
    get user_path @user
    assert_template 'users/show'
    get edit_user_path @user
    assert_template 'users/edit'
  end
end
