require 'test_helper'

class Admin::AddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get admin_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_address_url
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post admin_addresses_url, params: { address: { cid: @address.cid, parent_city: @address.parent_city } }
    end

    assert_redirected_to admin_address_url(Address.last)
  end

  test "should show address" do
    get admin_address_url(@address)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_address_url(@address)
    assert_response :success
  end

  test "should update address" do
    patch admin_address_url(@address), params: { address: { cid: @address.cid, parent_city: @address.parent_city } }
    assert_redirected_to admin_address_url(Address.last)
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete admin_address_url(@address)
    end

    assert_redirected_to admin_addresses_url
  end
end
