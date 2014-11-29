require 'test_helper'

class AccessoryItemsControllerTest < ActionController::TestCase
  setup do
    @accessory_item = accessory_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessory_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessory_item" do
    assert_difference('AccessoryItem.count') do
      post :create, accessory_item: { accessory_id: @accessory_item.accessory_id, cart_id: @accessory_item.cart_id, quantity: @accessory_item.quantity }
    end

    assert_redirected_to accessory_item_path(assigns(:accessory_item))
  end

  test "should show accessory_item" do
    get :show, id: @accessory_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accessory_item
    assert_response :success
  end

  test "should update accessory_item" do
    patch :update, id: @accessory_item, accessory_item: { accessory_id: @accessory_item.accessory_id, cart_id: @accessory_item.cart_id, quantity: @accessory_item.quantity }
    assert_redirected_to accessory_item_path(assigns(:accessory_item))
  end

  test "should destroy accessory_item" do
    assert_difference('AccessoryItem.count', -1) do
      delete :destroy, id: @accessory_item
    end

    assert_redirected_to accessory_items_path
  end
end
