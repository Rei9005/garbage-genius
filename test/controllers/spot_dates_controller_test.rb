require "test_helper"

class SpotDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot_date = spot_dates(:one)
  end

  test "should get index" do
    get spot_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_spot_date_url
    assert_response :success
  end

  test "should create spot_date" do
    assert_difference("SpotDate.count") do
      post spot_dates_url, params: { spot_date: { collection_type: @spot_date.collection_type, date: @spot_date.date, spot_id: @spot_date.spot_id } }
    end

    assert_redirected_to spot_date_url(SpotDate.last)
  end

  test "should show spot_date" do
    get spot_date_url(@spot_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_spot_date_url(@spot_date)
    assert_response :success
  end

  test "should update spot_date" do
    patch spot_date_url(@spot_date), params: { spot_date: { collection_type: @spot_date.collection_type, date: @spot_date.date, spot_id: @spot_date.spot_id } }
    assert_redirected_to spot_date_url(@spot_date)
  end

  test "should destroy spot_date" do
    assert_difference("SpotDate.count", -1) do
      delete spot_date_url(@spot_date)
    end

    assert_redirected_to spot_dates_url
  end
end
