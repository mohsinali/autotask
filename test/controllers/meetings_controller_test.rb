require 'test_helper'

class MeetingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting = meetings(:one)
  end

  test "should get index" do
    get meetings_url
    assert_response :success
  end

  test "should get new" do
    get new_meeting_url
    assert_response :success
  end

  test "should create meeting" do
    assert_difference('Meeting.count') do
      post meetings_url, params: { meeting: { agenda: @meeting.agenda, booked_by: @meeting.booked_by, call_recording: @meeting.call_recording, cancel_call: @meeting.cancel_call, concierage: @meeting.concierage, date: @meeting.date, duration: @meeting.duration, end_time: @meeting.end_time, operator: @meeting.operator, org_name: @meeting.org_name, organization_id: @meeting.organization_id, setup_call: @meeting.setup_call, start_time: @meeting.start_time, test_call: @meeting.test_call, title: @meeting.title, user_id: @meeting.user_id } }
    end

    assert_redirected_to meeting_url(Meeting.last)
  end

  test "should show meeting" do
    get meeting_url(@meeting)
    assert_response :success
  end

  test "should get edit" do
    get edit_meeting_url(@meeting)
    assert_response :success
  end

  test "should update meeting" do
    patch meeting_url(@meeting), params: { meeting: { agenda: @meeting.agenda, booked_by: @meeting.booked_by, call_recording: @meeting.call_recording, cancel_call: @meeting.cancel_call, concierage: @meeting.concierage, date: @meeting.date, duration: @meeting.duration, end_time: @meeting.end_time, operator: @meeting.operator, org_name: @meeting.org_name, organization_id: @meeting.organization_id, setup_call: @meeting.setup_call, start_time: @meeting.start_time, test_call: @meeting.test_call, title: @meeting.title, user_id: @meeting.user_id } }
    assert_redirected_to meeting_url(@meeting)
  end

  test "should destroy meeting" do
    assert_difference('Meeting.count', -1) do
      delete meeting_url(@meeting)
    end

    assert_redirected_to meetings_url
  end
end
