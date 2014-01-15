require 'test_helper'

class CaptionsControllerTest < ActionController::TestCase
  setup do
    @caption = captions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:captions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caption" do
    assert_difference('Caption.count') do
      post :create, caption: { meme_id: @caption.meme_id, picture: @caption.picture, sentence: @caption.sentence }
    end

    assert_redirected_to caption_path(assigns(:caption))
  end

  test "should show caption" do
    get :show, id: @caption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caption
    assert_response :success
  end

  test "should update caption" do
    patch :update, id: @caption, caption: { meme_id: @caption.meme_id, picture: @caption.picture, sentence: @caption.sentence }
    assert_redirected_to caption_path(assigns(:caption))
  end

  test "should destroy caption" do
    assert_difference('Caption.count', -1) do
      delete :destroy, id: @caption
    end

    assert_redirected_to captions_path
  end
end
