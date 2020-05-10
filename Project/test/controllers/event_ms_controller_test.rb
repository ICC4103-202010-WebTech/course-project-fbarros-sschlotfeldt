require 'test_helper'

class EventMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_m = event_ms(:one)
  end

  test "should get index" do
    get event_ms_url
    assert_response :success
  end

  test "should get new" do
    get new_event_m_url
    assert_response :success
  end

  test "should create event_m" do
    assert_difference('EventM.count') do
      post event_ms_url, params: { event_m: {  } }
    end

    assert_redirected_to event_m_url(EventM.last)
  end

  test "should show event_m" do
    get event_m_url(@event_m)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_m_url(@event_m)
    assert_response :success
  end

  test "should update event_m" do
    patch event_m_url(@event_m), params: { event_m: {  } }
    assert_redirected_to event_m_url(@event_m)
  end

  test "should destroy event_m" do
    assert_difference('EventM.count', -1) do
      delete event_m_url(@event_m)
    end

    assert_redirected_to event_ms_url
  end
end
