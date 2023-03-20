require "application_system_test_case"

class Property1sTest < ApplicationSystemTestCase
  setup do
    @property1 = property1s(:one)
  end

  test "visiting the index" do
    visit property1s_url
    assert_selector "h1", text: "Property1s"
  end

  test "should create property1" do
    visit property1s_url
    click_on "New property1"

    fill_in "Address", with: @property1.address
    fill_in "Bathrooms", with: @property1.bathrooms
    fill_in "Name", with: @property1.name
    fill_in "Price", with: @property1.price
    fill_in "Rooms", with: @property1.rooms
    click_on "Create Property1"

    assert_text "Property1 was successfully created"
    click_on "Back"
  end

  test "should update Property1" do
    visit property1_url(@property1)
    click_on "Edit this property1", match: :first

    fill_in "Address", with: @property1.address
    fill_in "Bathrooms", with: @property1.bathrooms
    fill_in "Name", with: @property1.name
    fill_in "Price", with: @property1.price
    fill_in "Rooms", with: @property1.rooms
    click_on "Update Property1"

    assert_text "Property1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Property1" do
    visit property1_url(@property1)
    click_on "Destroy this property1", match: :first

    assert_text "Property1 was successfully destroyed"
  end
end
