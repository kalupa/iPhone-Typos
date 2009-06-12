require 'test_helper'

class TyposControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typo" do
    assert_difference('Typo.count') do
      post :create, :typo => { }
    end

    assert_redirected_to typo_path(assigns(:typo))
  end

  test "should show typo" do
    get :show, :id => typos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => typos(:one).to_param
    assert_response :success
  end

  test "should update typo" do
    put :update, :id => typos(:one).to_param, :typo => { }
    assert_redirected_to typo_path(assigns(:typo))
  end

  test "should destroy typo" do
    assert_difference('Typo.count', -1) do
      delete :destroy, :id => typos(:one).to_param
    end

    assert_redirected_to typos_path
  end
end
