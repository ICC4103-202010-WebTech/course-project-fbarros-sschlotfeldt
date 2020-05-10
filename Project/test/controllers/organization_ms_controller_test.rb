require 'test_helper'

class OrganizationMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_m = organization_ms(:one)
  end

  test "should get index" do
    get organization_ms_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_m_url
    assert_response :success
  end

  test "should create organization_m" do
    assert_difference('OrganizationM.count') do
      post organization_ms_url, params: { organization_m: {  } }
    end

    assert_redirected_to organization_m_url(OrganizationM.last)
  end

  test "should show organization_m" do
    get organization_m_url(@organization_m)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_m_url(@organization_m)
    assert_response :success
  end

  test "should update organization_m" do
    patch organization_m_url(@organization_m), params: { organization_m: {  } }
    assert_redirected_to organization_m_url(@organization_m)
  end

  test "should destroy organization_m" do
    assert_difference('OrganizationM.count', -1) do
      delete organization_m_url(@organization_m)
    end

    assert_redirected_to organization_ms_url
  end
end
