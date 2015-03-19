require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { e_name: @event.e_name, final_score: @event.final_score, game_end_time: @event.game_end_time, team_1: @event.team_1, team_1_odds: @event.team_1_odds, team_2: @event.team_2, team_2_odds: @event.team_2_odds, total_pot: @event.total_pot }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { e_name: @event.e_name, final_score: @event.final_score, game_end_time: @event.game_end_time, team_1: @event.team_1, team_1_odds: @event.team_1_odds, team_2: @event.team_2, team_2_odds: @event.team_2_odds, total_pot: @event.total_pot }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
