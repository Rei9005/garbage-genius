require "application_system_test_case"

class SpotDatesTest < ApplicationSystemTestCase
  setup do
    @spot_date = spot_dates(:one)
  end

  test "visiting the index" do
    visit spot_dates_url
    assert_selector "h1", text: "Spot dates"
  end

  test "should create spot date" do
    visit spot_dates_url
    click_on "New spot date"

    fill_in "Collection type", with: @spot_date.collection_type
    fill_in "Date", with: @spot_date.date
    fill_in "Spot", with: @spot_date.spot_id
    click_on "Create Spot date"

    assert_text "Spot date was successfully created"
    click_on "Back"
  end

  test "should update Spot date" do
    visit spot_date_url(@spot_date)
    click_on "Edit this spot date", match: :first

    fill_in "Collection type", with: @spot_date.collection_type
    fill_in "Date", with: @spot_date.date
    fill_in "Spot", with: @spot_date.spot_id
    click_on "Update Spot date"

    assert_text "Spot date was successfully updated"
    click_on "Back"
  end

  test "should destroy Spot date" do
    visit spot_date_url(@spot_date)
    click_on "Destroy this spot date", match: :first

    assert_text "Spot date was successfully destroyed"
  end
end
