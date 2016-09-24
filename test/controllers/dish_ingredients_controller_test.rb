require 'test_helper'

class DishIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish_ingredient = dish_ingredients(:one)
  end

  test "should get index" do
    get dish_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_dish_ingredient_url
    assert_response :success
  end

  test "should create dish_ingredient" do
    assert_difference('DishIngredient.count') do
      post dish_ingredients_url, params: { dish_ingredient: { dish_id: @dish_ingredient.dish_id, ingredient_id: @dish_ingredient.ingredient_id } }
    end

    assert_redirected_to dish_ingredient_url(DishIngredient.last)
  end

  test "should show dish_ingredient" do
    get dish_ingredient_url(@dish_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_ingredient_url(@dish_ingredient)
    assert_response :success
  end

  test "should update dish_ingredient" do
    patch dish_ingredient_url(@dish_ingredient), params: { dish_ingredient: { dish_id: @dish_ingredient.dish_id, ingredient_id: @dish_ingredient.ingredient_id } }
    assert_redirected_to dish_ingredient_url(@dish_ingredient)
  end

  test "should destroy dish_ingredient" do
    assert_difference('DishIngredient.count', -1) do
      delete dish_ingredient_url(@dish_ingredient)
    end

    assert_redirected_to dish_ingredients_url
  end
end
