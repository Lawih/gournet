require 'test_helper'

class DishEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish_evaluation = dish_evaluations(:one)
  end

  test "should get index" do
    get dish_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_dish_evaluation_url
    assert_response :success
  end

  test "should create dish_evaluation" do
    assert_difference('DishEvaluation.count') do
      post dish_evaluations_url, params: { dish_evaluation: { comment: @dish_evaluation.comment, dish_id: @dish_evaluation.dish_id, score_quality: @dish_evaluation.score_quality, score_time: @dish_evaluation.score_time, score_visual: @dish_evaluation.score_visual, user_id: @dish_evaluation.user_id } }
    end

    assert_redirected_to dish_evaluation_url(DishEvaluation.last)
  end

  test "should show dish_evaluation" do
    get dish_evaluation_url(@dish_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_dish_evaluation_url(@dish_evaluation)
    assert_response :success
  end

  test "should update dish_evaluation" do
    patch dish_evaluation_url(@dish_evaluation), params: { dish_evaluation: { comment: @dish_evaluation.comment, dish_id: @dish_evaluation.dish_id, score_quality: @dish_evaluation.score_quality, score_time: @dish_evaluation.score_time, score_visual: @dish_evaluation.score_visual, user_id: @dish_evaluation.user_id } }
    assert_redirected_to dish_evaluation_url(@dish_evaluation)
  end

  test "should destroy dish_evaluation" do
    assert_difference('DishEvaluation.count', -1) do
      delete dish_evaluation_url(@dish_evaluation)
    end

    assert_redirected_to dish_evaluations_url
  end
end
