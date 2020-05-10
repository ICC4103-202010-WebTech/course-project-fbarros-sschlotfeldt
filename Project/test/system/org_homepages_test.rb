require "application_system_test_case"

class OrgHomepagesTest < ApplicationSystemTestCase
  setup do
    @org_homepage = org_homepages(:one)
  end

  test "visiting the index" do
    visit org_homepages_url
    assert_selector "h1", text: "Org Homepages"
  end

  test "creating a Org homepage" do
    visit org_homepages_url
    click_on "New Org Homepage"

    click_on "Create Org homepage"

    assert_text "Org homepage was successfully created"
    click_on "Back"
  end

  test "updating a Org homepage" do
    visit org_homepages_url
    click_on "Edit", match: :first

    click_on "Update Org homepage"

    assert_text "Org homepage was successfully updated"
    click_on "Back"
  end

  test "destroying a Org homepage" do
    visit org_homepages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Org homepage was successfully destroyed"
  end
end
