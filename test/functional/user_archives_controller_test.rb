require 'test_helper'

class UserArchivesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_archives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_archive" do
    assert_difference('UserArchive.count') do
      post :create, :user_archive => { }
    end

    assert_redirected_to user_archive_path(assigns(:user_archive))
  end

  test "should show user_archive" do
    get :show, :id => user_archives(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => user_archives(:one).to_param
    assert_response :success
  end

  test "should update user_archive" do
    put :update, :id => user_archives(:one).to_param, :user_archive => { }
    assert_redirected_to user_archive_path(assigns(:user_archive))
  end

  test "should destroy user_archive" do
    assert_difference('UserArchive.count', -1) do
      delete :destroy, :id => user_archives(:one).to_param
    end

    assert_redirected_to user_archives_path
  end
end
