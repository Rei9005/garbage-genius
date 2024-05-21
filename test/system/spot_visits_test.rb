require "application_system_test_case"

class SpotVisitsTest < ApplicationSystemTestCase
  setup do
    @spot_visit = spot_visits(:one)
  end

  test "visiting the index" do
    visit spot_visits_url
    assert_selector "h1", text: "Spot visits"
  end

  test "should create spot visit" do
    visit spot_visits_url
    click_on "New spot visit"

    fill_in "Spot date", with: @spot_visit.spot_date_id
    fill_in "Time", with: @spot_visit.time
    fill_in "User", with: @spot_visit.user_id
    click_on "Create Spot visit"

    assert_text "Spot visit was successfully created"
    click_on "Back"
  end

  test "should update Spot visit" do
    visit spot_visit_url(@spot_visit)
    click_on "Edit this spot visit", match: :first

    fill_in "Spot date", with: @spot_visit.spot_date_id
    fill_in "Time", with: @spot_visit.time
    fill_in "User", with: @spot_visit.user_id
    click_on "Update Spot visit"

    assert_text "Spot visit was successfully updated"
    click_on "Back"
  end

  test "should destroy Spot visit" do
    visit spot_visit_url(@spot_visit)
    click_on "Destroy this spot visit", match: :first

    assert_text "Spot visit was successfully destroyed"
  end
end
