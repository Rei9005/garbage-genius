require "test_helper"

class SpotVisitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot_visit = spot_visits(:one)
  end

  test "should get index" do
    get spot_visits_url
    assert_response :success
  end

  test "should get new" do
    get new_spot_visit_url
    assert_response :success
  end

  test "should create spot_visit" do
    assert_difference("SpotVisit.count") do
      post spot_visits_url, params: { spot_visit: { spot_date_id: @spot_visit.spot_date_id, time: @spot_visit.time, user_id: @spot_visit.user_id } }
    end

    assert_redirected_to spot_visit_url(SpotVisit.last)
  end

  test "should show spot_visit" do
    get spot_visit_url(@spot_visit)
    assert_response :success
  end

  test "should get edit" do
    get edit_spot_visit_url(@spot_visit)
    assert_response :success
  end

  test "should update spot_visit" do
    patch spot_visit_url(@spot_visit), params: { spot_visit: { spot_date_id: @spot_visit.spot_date_id, time: @spot_visit.time, user_id: @spot_visit.user_id } }
    assert_redirected_to spot_visit_url(@spot_visit)
  end

  test "should destroy spot_visit" do
    assert_difference("SpotVisit.count", -1) do
      delete spot_visit_url(@spot_visit)
    end

    assert_redirected_to spot_visits_url
  end
end
