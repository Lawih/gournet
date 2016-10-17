require 'test_helper'

class UserAllergiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_allergy = user_allergies(:one)
  end

  test "should get index" do
    get user_allergies_url
    assert_response :success
  end

  test "should get new" do
    get new_user_allergy_url
    assert_response :success
  end

  test "should create user_allergy" do
    assert_difference('UserAllergie.count') do
      post user_allergies_url, params: { user_allergy: { allergie_id: @user_allergy.allergie_id, user_id: @user_allergy.user_id } }
    end

    assert_redirected_to user_allergy_url(UserAllergie.last)
  end

  test "should show user_allergy" do
    get user_allergy_url(@user_allergy)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_allergy_url(@user_allergy)
    assert_response :success
  end

  test "should update user_allergy" do
    patch user_allergy_url(@user_allergy), params: { user_allergy: { allergie_id: @user_allergy.allergie_id, user_id: @user_allergy.user_id } }
    assert_redirected_to user_allergy_url(@user_allergy)
  end

  test "should destroy user_allergy" do
    assert_difference('UserAllergie.count', -1) do
      delete user_allergy_url(@user_allergy)
    end

    assert_redirected_to user_allergies_url
  end
end
