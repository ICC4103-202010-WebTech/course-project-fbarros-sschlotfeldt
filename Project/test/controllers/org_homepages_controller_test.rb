require 'test_helper'

class OrgHomepagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @org_homepage = org_homepages(:one)
  end

  test "should get index" do
    get org_homepages_url
    assert_response :success
  end

  test "should get new" do
    get new_org_homepage_url
    assert_response :success
  end

  test "should create org_homepage" do
    assert_difference('OrgHomepage.count') do
      post org_homepages_url, params: { org_homepage: {  } }
    end

    assert_redirected_to org_homepage_url(OrgHomepage.last)
  end

  test "should show org_homepage" do
    get org_homepage_url(@org_homepage)
    assert_response :success
  end

  test "should get edit" do
    get edit_org_homepage_url(@org_homepage)
    assert_response :success
  end

  test "should update org_homepage" do
    patch org_homepage_url(@org_homepage), params: { org_homepage: {  } }
    assert_redirected_to org_homepage_url(@org_homepage)
  end

  test "should destroy org_homepage" do
    assert_difference('OrgHomepage.count', -1) do
      delete org_homepage_url(@org_homepage)
    end

    assert_redirected_to org_homepages_url
  end
end
