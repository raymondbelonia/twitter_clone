require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do 
    get root_path
    assert_template 'static_pages/home'
    get signup_path
    assert_select "title", "Ruby on Rails Tutorial Sample App | Sign up"
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end
