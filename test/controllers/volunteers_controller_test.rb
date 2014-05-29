require 'test_helper'

class VolunteersControllerTest < ActionController::TestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post :create, volunteer: { branch: @volunteer.branch, college: @volunteer.college, email: @volunteer.email, gender: @volunteer.gender, getting_laptop: @volunteer.getting_laptop, name: @volunteer.name, phone: @volunteer.phone, previous_camp: @volunteer.previous_camp, ready_to_pay: @volunteer.ready_to_pay, sem: @volunteer.sem, t_shirt_size: @volunteer.t_shirt_size }
    end

    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should show volunteer" do
    get :show, id: @volunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer
    assert_response :success
  end

  test "should update volunteer" do
    patch :update, id: @volunteer, volunteer: { branch: @volunteer.branch, college: @volunteer.college, email: @volunteer.email, gender: @volunteer.gender, getting_laptop: @volunteer.getting_laptop, name: @volunteer.name, phone: @volunteer.phone, previous_camp: @volunteer.previous_camp, ready_to_pay: @volunteer.ready_to_pay, sem: @volunteer.sem, t_shirt_size: @volunteer.t_shirt_size }
    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete :destroy, id: @volunteer
    end

    assert_redirected_to volunteers_path
  end
end
