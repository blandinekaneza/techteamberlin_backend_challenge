require "application_system_test_case"

class PayloadsTest < ApplicationSystemTestCase
  setup do
    @payload = payloads(:one)
  end

  test "visiting the index" do
    visit payloads_url
    assert_selector "h1", text: "Payloads"
  end

  test "creating a Payload" do
    visit payloads_url
    click_on "New Payload"

    fill_in "Manufacturer", with: @payload.manufacturer
    fill_in "Orbit", with: @payload.orbit
    fill_in "Payload", with: @payload.payload_id
    fill_in "Payload Mass Kg", with: @payload.payload_mass_kg
    fill_in "Payload Mass Lbs", with: @payload.payload_mass_lbs
    fill_in "Payload Type", with: @payload.payload_type
    fill_in "Reused", with: @payload.reused
    click_on "Create Payload"

    assert_text "Payload was successfully created"
    click_on "Back"
  end

  test "updating a Payload" do
    visit payloads_url
    click_on "Edit", match: :first

    fill_in "Manufacturer", with: @payload.manufacturer
    fill_in "Orbit", with: @payload.orbit
    fill_in "Payload", with: @payload.payload_id
    fill_in "Payload Mass Kg", with: @payload.payload_mass_kg
    fill_in "Payload Mass Lbs", with: @payload.payload_mass_lbs
    fill_in "Payload Type", with: @payload.payload_type
    fill_in "Reused", with: @payload.reused
    click_on "Update Payload"

    assert_text "Payload was successfully updated"
    click_on "Back"
  end

  test "destroying a Payload" do
    visit payloads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payload was successfully destroyed"
  end
end
