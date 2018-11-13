require "application_system_test_case"

class MissionsTest < ApplicationSystemTestCase
  setup do
    @mission = missions(:one)
  end

  test "visiting the index" do
    visit missions_url
    assert_selector "h1", text: "Missions"
  end

  test "creating a Mission" do
    visit missions_url
    click_on "New Mission"

    fill_in "Description", with: @mission.description
    fill_in "Mission", with: @mission.mission_id
    fill_in "Mission Name", with: @mission.mission_name
    fill_in "Twitter", with: @mission.twitter
    fill_in "Website", with: @mission.website
    fill_in "Wikipedia", with: @mission.wikipedia
    click_on "Create Mission"

    assert_text "Mission was successfully created"
    click_on "Back"
  end

  test "updating a Mission" do
    visit missions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @mission.description
    fill_in "Mission", with: @mission.mission_id
    fill_in "Mission Name", with: @mission.mission_name
    fill_in "Twitter", with: @mission.twitter
    fill_in "Website", with: @mission.website
    fill_in "Wikipedia", with: @mission.wikipedia
    click_on "Update Mission"

    assert_text "Mission was successfully updated"
    click_on "Back"
  end

  test "destroying a Mission" do
    visit missions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mission was successfully destroyed"
  end
end
