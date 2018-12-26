require "application_system_test_case"

class CallTestingsTest < ApplicationSystemTestCase
  setup do
    @call_testing = call_testings(:one)
  end

  test "visiting the index" do
    visit call_testings_url
    assert_selector "h1", text: "Call Testings"
  end

  test "creating a Call testing" do
    visit call_testings_url
    click_on "New Call Testing"

    fill_in "Comments", with: @call_testing.comments
    fill_in "Contact Email", with: @call_testing.contact_email
    fill_in "Contact Name", with: @call_testing.contact_name
    fill_in "Contact Phone", with: @call_testing.contact_phone
    fill_in "Date", with: @call_testing.date
    fill_in "Ip Address", with: @call_testing.ip_address
    fill_in "Isdn", with: @call_testing.isdn
    fill_in "Organization", with: @call_testing.organization_id
    fill_in "Other", with: @call_testing.other
    fill_in "Room", with: @call_testing.room
    fill_in "Skype Detail", with: @call_testing.skype_detail
    fill_in "Testing Method", with: @call_testing.testing_method
    fill_in "Testing Status", with: @call_testing.testing_status
    fill_in "Testing With", with: @call_testing.testing_with
    fill_in "Url", with: @call_testing.url
    click_on "Create Call testing"

    assert_text "Call testing was successfully created"
    click_on "Back"
  end

  test "updating a Call testing" do
    visit call_testings_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @call_testing.comments
    fill_in "Contact Email", with: @call_testing.contact_email
    fill_in "Contact Name", with: @call_testing.contact_name
    fill_in "Contact Phone", with: @call_testing.contact_phone
    fill_in "Date", with: @call_testing.date
    fill_in "Ip Address", with: @call_testing.ip_address
    fill_in "Isdn", with: @call_testing.isdn
    fill_in "Organization", with: @call_testing.organization_id
    fill_in "Other", with: @call_testing.other
    fill_in "Room", with: @call_testing.room
    fill_in "Skype Detail", with: @call_testing.skype_detail
    fill_in "Testing Method", with: @call_testing.testing_method
    fill_in "Testing Status", with: @call_testing.testing_status
    fill_in "Testing With", with: @call_testing.testing_with
    fill_in "Url", with: @call_testing.url
    click_on "Update Call testing"

    assert_text "Call testing was successfully updated"
    click_on "Back"
  end

  test "destroying a Call testing" do
    visit call_testings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Call testing was successfully destroyed"
  end
end
