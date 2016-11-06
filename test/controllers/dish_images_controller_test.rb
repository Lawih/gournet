require 'test_helper'

class DishImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish_image = dish_images(:one)
  end

  test "should get index" do
    get dish_images_url
    assert_response :success
  end

  test "should get new" do
    get new_dish_image_url
    assert_response :success
  end

  test "should create dish_image" do
    assert_difference('DishImage.count') do
      post dish_images_url, params: { dish_image: { dish_id: @dish_image.dish_id, url: @dish_image.url } }
    end

    assert_redirected_to dish_image_url(DishImage.last)
  end

  test "should show dish_image" do
    get dish_image_url(@dish_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_image_url(@dish_image)
    assert_response :success
  end

  test "should update dish_image" do
    patch dish_image_url(@dish_image), params: { dish_image: { dish_id: @dish_image.dish_id, url: @dish_image.url } }
    assert_redirected_to dish_image_url(@dish_image)
  end

  test "should destroy dish_image" do
    assert_difference('DishImage.count', -1) do
      delete dish_image_url(@dish_image)
    end

    assert_redirected_to dish_images_url
  end
end
