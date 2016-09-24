require 'test_helper'

class FavoriteDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_dish = favorite_dishes(:one)
  end

  test "should get index" do
    get favorite_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_favorite_dish_url
    assert_response :success
  end

  test "should create favorite_dish" do
    assert_difference('FavoriteDish.count') do
      post favorite_dishes_url, params: { favorite_dish: { dish_id: @favorite_dish.dish_id, user_id: @favorite_dish.user_id } }
    end

    assert_redirected_to favorite_dish_url(FavoriteDish.last)
  end

  test "should show favorite_dish" do
    get favorite_dish_url(@favorite_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorite_dish_url(@favorite_dish)
    assert_response :success
  end

  test "should update favorite_dish" do
    patch favorite_dish_url(@favorite_dish), params: { favorite_dish: { dish_id: @favorite_dish.dish_id, user_id: @favorite_dish.user_id } }
    assert_redirected_to favorite_dish_url(@favorite_dish)
  end

  test "should destroy favorite_dish" do
    assert_difference('FavoriteDish.count', -1) do
      delete favorite_dish_url(@favorite_dish)
    end

    assert_redirected_to favorite_dishes_url
  end
end
