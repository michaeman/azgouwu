require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { addr_city: @customer.addr_city, addr_line_1: @customer.addr_line_1, addr_line_2: @customer.addr_line_2, addr_line_3: @customer.addr_line_3, addr_state: @customer.addr_state, email: @customer.email, first_name: @customer.first_name, last_name: @customer.last_name, middle_name: @customer.middle_name, overseas_phone: @customer.overseas_phone, phone: @customer.phone, post_code: @customer.post_code, reference_num: @customer.reference_num }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { addr_city: @customer.addr_city, addr_line_1: @customer.addr_line_1, addr_line_2: @customer.addr_line_2, addr_line_3: @customer.addr_line_3, addr_state: @customer.addr_state, email: @customer.email, first_name: @customer.first_name, last_name: @customer.last_name, middle_name: @customer.middle_name, overseas_phone: @customer.overseas_phone, phone: @customer.phone, post_code: @customer.post_code, reference_num: @customer.reference_num }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
