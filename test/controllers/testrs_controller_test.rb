require 'test_helper'

class TestrsControllerTest < ActionController::TestCase
  setup do
    @testr = testrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testr" do
    assert_difference('Testr.count') do
      post :create, testr: { burp: @testr.burp, name: @testr.name }
    end

    assert_redirected_to testr_path(assigns(:testr))
  end

  test "should show testr" do
    get :show, id: @testr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testr
    assert_response :success
  end

  test "should update testr" do
    patch :update, id: @testr, testr: { burp: @testr.burp, name: @testr.name }
    assert_redirected_to testr_path(assigns(:testr))
  end

  test "should destroy testr" do
    assert_difference('Testr.count', -1) do
      delete :destroy, id: @testr
    end

    assert_redirected_to testrs_path
  end
end
