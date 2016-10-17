require 'test_helper'

class OrderAllergiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_allergy = order_allergies(:one)
  end

  test "should get index" do
    get order_allergies_url
    assert_response :success
  end

  test "should get new" do
    get new_order_allergy_url
    assert_response :success
  end

  test "should create order_allergy" do
    assert_difference('OrderAllergie.count') do
      post order_allergies_url, params: { order_allergy: { allergie_id: @order_allergy.allergie_id, order_id: @order_allergy.order_id } }
    end

    assert_redirected_to order_allergy_url(OrderAllergie.last)
  end

  test "should show order_allergy" do
    get order_allergy_url(@order_allergy)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_allergy_url(@order_allergy)
    assert_response :success
  end

  test "should update order_allergy" do
    patch order_allergy_url(@order_allergy), params: { order_allergy: { allergie_id: @order_allergy.allergie_id, order_id: @order_allergy.order_id } }
    assert_redirected_to order_allergy_url(@order_allergy)
  end

  test "should destroy order_allergy" do
    assert_difference('OrderAllergie.count', -1) do
      delete order_allergy_url(@order_allergy)
    end

    assert_redirected_to order_allergies_url
  end
end
