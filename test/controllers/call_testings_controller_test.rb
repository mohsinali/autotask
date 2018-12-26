require 'test_helper'

class CallTestingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @call_testing = call_testings(:one)
  end

  test "should get index" do
    get call_testings_url
    assert_response :success
  end

  test "should get new" do
    get new_call_testing_url
    assert_response :success
  end

  test "should create call_testing" do
    assert_difference('CallTesting.count') do
      post call_testings_url, params: { call_testing: { comments: @call_testing.comments, contact_email: @call_testing.contact_email, contact_name: @call_testing.contact_name, contact_phone: @call_testing.contact_phone, date: @call_testing.date, ip_address: @call_testing.ip_address, isdn: @call_testing.isdn, organization_id: @call_testing.organization_id, other: @call_testing.other, room: @call_testing.room, skype_detail: @call_testing.skype_detail, testing_method: @call_testing.testing_method, testing_status: @call_testing.testing_status, testing_with: @call_testing.testing_with, url: @call_testing.url } }
    end

    assert_redirected_to call_testing_url(CallTesting.last)
  end

  test "should show call_testing" do
    get call_testing_url(@call_testing)
    assert_response :success
  end

  test "should get edit" do
    get edit_call_testing_url(@call_testing)
    assert_response :success
  end

  test "should update call_testing" do
    patch call_testing_url(@call_testing), params: { call_testing: { comments: @call_testing.comments, contact_email: @call_testing.contact_email, contact_name: @call_testing.contact_name, contact_phone: @call_testing.contact_phone, date: @call_testing.date, ip_address: @call_testing.ip_address, isdn: @call_testing.isdn, organization_id: @call_testing.organization_id, other: @call_testing.other, room: @call_testing.room, skype_detail: @call_testing.skype_detail, testing_method: @call_testing.testing_method, testing_status: @call_testing.testing_status, testing_with: @call_testing.testing_with, url: @call_testing.url } }
    assert_redirected_to call_testing_url(@call_testing)
  end

  test "should destroy call_testing" do
    assert_difference('CallTesting.count', -1) do
      delete call_testing_url(@call_testing)
    end

    assert_redirected_to call_testings_url
  end
end
