require "application_system_test_case"

class OInvitesTest < ApplicationSystemTestCase
  setup do
    @o_invite = o_invites(:one)
  end

  test "visiting the index" do
    visit o_invites_url
    assert_selector "h1", text: "O Invites"
  end

  test "creating a O invite" do
    visit o_invites_url
    click_on "New O Invite"

    click_on "Create O invite"

    assert_text "O invite was successfully created"
    click_on "Back"
  end

  test "updating a O invite" do
    visit o_invites_url
    click_on "Edit", match: :first

    click_on "Update O invite"

    assert_text "O invite was successfully updated"
    click_on "Back"
  end

  test "destroying a O invite" do
    visit o_invites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "O invite was successfully destroyed"
  end
end
