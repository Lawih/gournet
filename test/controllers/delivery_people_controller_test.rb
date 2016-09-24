require 'test_helper'

class DeliveryPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_person = delivery_people(:one)
  end

  test "should get index" do
    get delivery_people_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_person_url
    assert_response :success
  end

  test "should create delivery_person" do
    assert_difference('DeliveryPerson.count') do
      post delivery_people_url, params: { delivery_person: { document: @delivery_person.document, lastname: @delivery_person.lastname, name: @delivery_person.name, phone: @delivery_person.phone, picture: @delivery_person.picture } }
    end

    assert_redirected_to delivery_person_url(DeliveryPerson.last)
  end

  test "should show delivery_person" do
    get delivery_person_url(@delivery_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_person_url(@delivery_person)
    assert_response :success
  end

  test "should update delivery_person" do
    patch delivery_person_url(@delivery_person), params: { delivery_person: { document: @delivery_person.document, lastname: @delivery_person.lastname, name: @delivery_person.name, phone: @delivery_person.phone, picture: @delivery_person.picture } }
    assert_redirected_to delivery_person_url(@delivery_person)
  end

  test "should destroy delivery_person" do
    assert_difference('DeliveryPerson.count', -1) do
      delete delivery_person_url(@delivery_person)
    end

    assert_redirected_to delivery_people_url
  end
end
