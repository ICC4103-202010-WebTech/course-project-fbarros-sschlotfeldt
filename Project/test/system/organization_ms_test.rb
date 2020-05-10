require "application_system_test_case"

class OrganizationMsTest < ApplicationSystemTestCase
  setup do
    @organization_m = organization_ms(:one)
  end

  test "visiting the index" do
    visit organization_ms_url
    assert_selector "h1", text: "Organization Ms"
  end

  test "creating a Organization m" do
    visit organization_ms_url
    click_on "New Organization M"

    click_on "Create Organization m"

    assert_text "Organization m was successfully created"
    click_on "Back"
  end

  test "updating a Organization m" do
    visit organization_ms_url
    click_on "Edit", match: :first

    click_on "Update Organization m"

    assert_text "Organization m was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization m" do
    visit organization_ms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization m was successfully destroyed"
  end
end
