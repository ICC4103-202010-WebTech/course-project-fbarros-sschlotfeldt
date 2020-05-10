require "application_system_test_case"

class EventMsTest < ApplicationSystemTestCase
  setup do
    @event_m = event_ms(:one)
  end

  test "visiting the index" do
    visit event_ms_url
    assert_selector "h1", text: "Event Ms"
  end

  test "creating a Event m" do
    visit event_ms_url
    click_on "New Event M"

    click_on "Create Event m"

    assert_text "Event m was successfully created"
    click_on "Back"
  end

  test "updating a Event m" do
    visit event_ms_url
    click_on "Edit", match: :first

    click_on "Update Event m"

    assert_text "Event m was successfully updated"
    click_on "Back"
  end

  test "destroying a Event m" do
    visit event_ms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event m was successfully destroyed"
  end
end
