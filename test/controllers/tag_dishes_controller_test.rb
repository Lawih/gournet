require 'test_helper'

class TagDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_dish = tag_dishes(:one)
  end

  test "should get index" do
    get tag_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_dish_url
    assert_response :success
  end

  test "should create tag_dish" do
    assert_difference('TagDish.count') do
      post tag_dishes_url, params: { tag_dish: { dish_id: @tag_dish.dish_id, tag_id: @tag_dish.tag_id } }
    end

    assert_redirected_to tag_dish_url(TagDish.last)
  end

  test "should show tag_dish" do
    get tag_dish_url(@tag_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_dish_url(@tag_dish)
    assert_response :success
  end

  test "should update tag_dish" do
    patch tag_dish_url(@tag_dish), params: { tag_dish: { dish_id: @tag_dish.dish_id, tag_id: @tag_dish.tag_id } }
    assert_redirected_to tag_dish_url(@tag_dish)
  end

  test "should destroy tag_dish" do
    assert_difference('TagDish.count', -1) do
      delete tag_dish_url(@tag_dish)
    end

    assert_redirected_to tag_dishes_url
  end
end
