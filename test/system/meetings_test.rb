require "application_system_test_case"

class MeetingsTest < ApplicationSystemTestCase
  setup do
    @meeting = meetings(:one)
  end

  test "visiting the index" do
    visit meetings_url
    assert_selector "h1", text: "Meetings"
  end

  test "creating a Meeting" do
    visit meetings_url
    click_on "New Meeting"

    fill_in "Agenda", with: @meeting.agenda
    fill_in "Booked By", with: @meeting.booked_by
    fill_in "Call Recording", with: @meeting.call_recording
    fill_in "Cancel Call", with: @meeting.cancel_call
    fill_in "Concierage", with: @meeting.concierage
    fill_in "Date", with: @meeting.date
    fill_in "Duration", with: @meeting.duration
    fill_in "End Time", with: @meeting.end_time
    fill_in "Operator", with: @meeting.operator
    fill_in "Org Name", with: @meeting.org_name
    fill_in "Organization", with: @meeting.organization_id
    fill_in "Setup Call", with: @meeting.setup_call
    fill_in "Start Time", with: @meeting.start_time
    fill_in "Test Call", with: @meeting.test_call
    fill_in "Title", with: @meeting.title
    fill_in "User", with: @meeting.user_id
    click_on "Create Meeting"

    assert_text "Meeting was successfully created"
    click_on "Back"
  end

  test "updating a Meeting" do
    visit meetings_url
    click_on "Edit", match: :first

    fill_in "Agenda", with: @meeting.agenda
    fill_in "Booked By", with: @meeting.booked_by
    fill_in "Call Recording", with: @meeting.call_recording
    fill_in "Cancel Call", with: @meeting.cancel_call
    fill_in "Concierage", with: @meeting.concierage
    fill_in "Date", with: @meeting.date
    fill_in "Duration", with: @meeting.duration
    fill_in "End Time", with: @meeting.end_time
    fill_in "Operator", with: @meeting.operator
    fill_in "Org Name", with: @meeting.org_name
    fill_in "Organization", with: @meeting.organization_id
    fill_in "Setup Call", with: @meeting.setup_call
    fill_in "Start Time", with: @meeting.start_time
    fill_in "Test Call", with: @meeting.test_call
    fill_in "Title", with: @meeting.title
    fill_in "User", with: @meeting.user_id
    click_on "Update Meeting"

    assert_text "Meeting was successfully updated"
    click_on "Back"
  end

  test "destroying a Meeting" do
    visit meetings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meeting was successfully destroyed"
  end
end
