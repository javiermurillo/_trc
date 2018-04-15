require "application_system_test_case"

class HeartZonesTest < ApplicationSystemTestCase
  setup do
    @heart_zone = heart_zones(:one)
  end

  test "visiting the index" do
    visit heart_zones_url
    assert_selector "h1", text: "Heart Zones"
  end

  test "creating a Heart zone" do
    visit heart_zones_url
    click_on "New Heart Zone"

    fill_in "Age", with: @heart_zone.age
    fill_in "Drugs", with: @heart_zone.drugs
    fill_in "Illness", with: @heart_zone.illness
    fill_in "Maxhr", with: @heart_zone.maxhr
    fill_in "Rhravg", with: @heart_zone.rhravg
    fill_in "User", with: @heart_zone.user_id
    click_on "Create Heart zone"

    assert_text "Heart zone was successfully created"
    click_on "Back"
  end

  test "updating a Heart zone" do
    visit heart_zones_url
    click_on "Edit", match: :first

    fill_in "Age", with: @heart_zone.age
    fill_in "Drugs", with: @heart_zone.drugs
    fill_in "Illness", with: @heart_zone.illness
    fill_in "Maxhr", with: @heart_zone.maxhr
    fill_in "Rhravg", with: @heart_zone.rhravg
    fill_in "User", with: @heart_zone.user_id
    click_on "Update Heart zone"

    assert_text "Heart zone was successfully updated"
    click_on "Back"
  end

  test "destroying a Heart zone" do
    visit heart_zones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Heart zone was successfully destroyed"
  end
end
