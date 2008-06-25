require 'test_helper'

class FavoritesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:favorites)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_favorite
    assert_difference('Favorite.count') do
      post :create, :favorite => { }
    end

    assert_redirected_to favorite_path(assigns(:favorite))
  end

  def test_should_show_favorite
    get :show, :id => favorites(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => favorites(:one).id
    assert_response :success
  end

  def test_should_update_favorite
    put :update, :id => favorites(:one).id, :favorite => { }
    assert_redirected_to favorite_path(assigns(:favorite))
  end

  def test_should_destroy_favorite
    assert_difference('Favorite.count', -1) do
      delete :destroy, :id => favorites(:one).id
    end

    assert_redirected_to favorites_path
  end
end
