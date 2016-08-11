require 'test_helper'

class RentalItemsControllerTest < ActionController::TestCase
  setup do
    @rental_item = rental_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rental_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rental_item" do
    assert_difference('RentalItem.count') do
      post :create, rental_item: { Category: @rental_item.Category, Description: @rental_item.Description, Item: @rental_item.Item, Rental_Rate: @rental_item.Rental_Rate, Type: @rental_item.Type }
    end

    assert_redirected_to rental_item_path(assigns(:rental_item))
  end

  test "should show rental_item" do
    get :show, id: @rental_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rental_item
    assert_response :success
  end

  test "should update rental_item" do
    patch :update, id: @rental_item, rental_item: { Category: @rental_item.Category, Description: @rental_item.Description, Item: @rental_item.Item, Rental_Rate: @rental_item.Rental_Rate, Type: @rental_item.Type }
    assert_redirected_to rental_item_path(assigns(:rental_item))
  end

  test "should destroy rental_item" do
    assert_difference('RentalItem.count', -1) do
      delete :destroy, id: @rental_item
    end

    assert_redirected_to rental_items_path
  end
end
