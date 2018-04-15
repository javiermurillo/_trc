require 'test_helper'

class HeartZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heart_zone = heart_zones(:one)
  end

  test "should get index" do
    get heart_zones_url
    assert_response :success
  end

  test "should get new" do
    get new_heart_zone_url
    assert_response :success
  end

  test "should create heart_zone" do
    assert_difference('HeartZone.count') do
      post heart_zones_url, params: { heart_zone: { age: @heart_zone.age, drugs: @heart_zone.drugs, illness: @heart_zone.illness, maxhr: @heart_zone.maxhr, rhravg: @heart_zone.rhravg, user_id: @heart_zone.user_id } }
    end

    assert_redirected_to heart_zone_url(HeartZone.last)
  end

  test "should show heart_zone" do
    get heart_zone_url(@heart_zone)
    assert_response :success
  end

  test "should get edit" do
    get edit_heart_zone_url(@heart_zone)
    assert_response :success
  end

  test "should update heart_zone" do
    patch heart_zone_url(@heart_zone), params: { heart_zone: { age: @heart_zone.age, drugs: @heart_zone.drugs, illness: @heart_zone.illness, maxhr: @heart_zone.maxhr, rhravg: @heart_zone.rhravg, user_id: @heart_zone.user_id } }
    assert_redirected_to heart_zone_url(@heart_zone)
  end

  test "should destroy heart_zone" do
    assert_difference('HeartZone.count', -1) do
      delete heart_zone_url(@heart_zone)
    end

    assert_redirected_to heart_zones_url
  end
end
