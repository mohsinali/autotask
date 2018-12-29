require "application_system_test_case"

class ExternalsTest < ApplicationSystemTestCase
  setup do
    @external = externals(:one)
  end

  test "visiting the index" do
    visit externals_url
    assert_selector "h1", text: "Externals"
  end

  test "creating a External" do
    visit externals_url
    click_on "New External"

    fill_in "Name", with: @external.name
    fill_in "Organization", with: @external.organization_id
    fill_in "Questmark Reference", with: @external.questmark_reference
    fill_in "Room", with: @external.room
    click_on "Create External"

    assert_text "External was successfully created"
    click_on "Back"
  end

  test "updating a External" do
    visit externals_url
    click_on "Edit", match: :first

    fill_in "Name", with: @external.name
    fill_in "Organization", with: @external.organization_id
    fill_in "Questmark Reference", with: @external.questmark_reference
    fill_in "Room", with: @external.room
    click_on "Update External"

    assert_text "External was successfully updated"
    click_on "Back"
  end

  test "destroying a External" do
    visit externals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "External was successfully destroyed"
  end
end
