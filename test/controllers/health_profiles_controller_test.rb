require 'test_helper'

class HealthProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_profile = health_profiles(:one)
  end

  test "should get index" do
    get health_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_health_profile_url
    assert_response :success
  end

  test "should create health_profile" do
    assert_difference('HealthProfile.count') do
      post health_profiles_url, params: { health_profile: { birthday: @health_profile.birthday, gender: @health_profile.gender, illness: @health_profile.illness, user_id: @health_profile.user_id, weight: @health_profile.weight } }
    end

    assert_redirected_to health_profile_url(HealthProfile.last)
  end

  test "should show health_profile" do
    get health_profile_url(@health_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_profile_url(@health_profile)
    assert_response :success
  end

  test "should update health_profile" do
    patch health_profile_url(@health_profile), params: { health_profile: { birthday: @health_profile.birthday, gender: @health_profile.gender, illness: @health_profile.illness, user_id: @health_profile.user_id, weight: @health_profile.weight } }
    assert_redirected_to health_profile_url(@health_profile)
  end

  test "should destroy health_profile" do
    assert_difference('HealthProfile.count', -1) do
      delete health_profile_url(@health_profile)
    end

    assert_redirected_to health_profiles_url
  end
end
