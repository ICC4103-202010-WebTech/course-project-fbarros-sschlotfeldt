require 'test_helper'

class OInvitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @o_invite = o_invites(:one)
  end

  test "should get index" do
    get o_invites_url
    assert_response :success
  end

  test "should get new" do
    get new_o_invite_url
    assert_response :success
  end

  test "should create o_invite" do
    assert_difference('OInvite.count') do
      post o_invites_url, params: { o_invite: {  } }
    end

    assert_redirected_to o_invite_url(OInvite.last)
  end

  test "should show o_invite" do
    get o_invite_url(@o_invite)
    assert_response :success
  end

  test "should get edit" do
    get edit_o_invite_url(@o_invite)
    assert_response :success
  end

  test "should update o_invite" do
    patch o_invite_url(@o_invite), params: { o_invite: {  } }
    assert_redirected_to o_invite_url(@o_invite)
  end

  test "should destroy o_invite" do
    assert_difference('OInvite.count', -1) do
      delete o_invite_url(@o_invite)
    end

    assert_redirected_to o_invites_url
  end
end
