require "test_helper"

class Property1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property1 = property1s(:one)
  end

  test "should get index" do
    get property1s_url
    assert_response :success
  end

  test "should get new" do
    get new_property1_url
    assert_response :success
  end

  test "should create property1" do
    assert_difference("Property1.count") do
      post property1s_url, params: { property1: { address: @property1.address, bathrooms: @property1.bathrooms, name: @property1.name, price: @property1.price, rooms: @property1.rooms } }
    end

    assert_redirected_to property1_url(Property1.last)
  end

  test "should show property1" do
    get property1_url(@property1)
    assert_response :success
  end

  test "should get edit" do
    get edit_property1_url(@property1)
    assert_response :success
  end

  test "should update property1" do
    patch property1_url(@property1), params: { property1: { address: @property1.address, bathrooms: @property1.bathrooms, name: @property1.name, price: @property1.price, rooms: @property1.rooms } }
    assert_redirected_to property1_url(@property1)
  end

  test "should destroy property1" do
    assert_difference("Property1.count", -1) do
      delete property1_url(@property1)
    end

    assert_redirected_to property1s_url
  end
end
