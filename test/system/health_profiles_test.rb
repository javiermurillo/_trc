require "application_system_test_case"

class HealthProfilesTest < ApplicationSystemTestCase
  setup do
    @health_profile = health_profiles(:one)
  end

  test "visiting the index" do
    visit health_profiles_url
    assert_selector "h1", text: "Health Profiles"
  end

  test "creating a Health profile" do
    visit health_profiles_url
    click_on "New Health Profile"

    fill_in "Birthday", with: @health_profile.birthday
    fill_in "Gender", with: @health_profile.gender
    fill_in "Illness", with: @health_profile.illness
    fill_in "User", with: @health_profile.user_id
    fill_in "Weight", with: @health_profile.weight
    click_on "Create Health profile"

    assert_text "Health profile was successfully created"
    click_on "Back"
  end

  test "updating a Health profile" do
    visit health_profiles_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @health_profile.birthday
    fill_in "Gender", with: @health_profile.gender
    fill_in "Illness", with: @health_profile.illness
    fill_in "User", with: @health_profile.user_id
    fill_in "Weight", with: @health_profile.weight
    click_on "Update Health profile"

    assert_text "Health profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Health profile" do
    visit health_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health profile was successfully destroyed"
  end
end
