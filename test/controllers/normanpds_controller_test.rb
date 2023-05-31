require "test_helper"

class NormanpdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @normanpd = normanpds(:one)
  end

  test "should get index" do
    get normanpds_url
    assert_response :success
  end

  test "should get new" do
    get new_normanpd_url
    assert_response :success
  end

  test "should create normanpd" do
    assert_difference("Normanpd.count") do
      post normanpds_url, params: { normanpd: { address1: @normanpd.address1, address2: @normanpd.address2, business: @normanpd.business, city: @normanpd.city, email: @normanpd.email, first_name: @normanpd.first_name, gatecode: @normanpd.gatecode, last_name: @normanpd.last_name, notes: @normanpd.notes, phone1: @normanpd.phone1, phone2: @normanpd.phone2, state: @normanpd.state, zip: @normanpd.zip } }
    end

    assert_redirected_to normanpd_url(Normanpd.last)
  end

  test "should show normanpd" do
    get normanpd_url(@normanpd)
    assert_response :success
  end

  test "should get edit" do
    get edit_normanpd_url(@normanpd)
    assert_response :success
  end

  test "should update normanpd" do
    patch normanpd_url(@normanpd), params: { normanpd: { address1: @normanpd.address1, address2: @normanpd.address2, business: @normanpd.business, city: @normanpd.city, email: @normanpd.email, first_name: @normanpd.first_name, gatecode: @normanpd.gatecode, last_name: @normanpd.last_name, notes: @normanpd.notes, phone1: @normanpd.phone1, phone2: @normanpd.phone2, state: @normanpd.state, zip: @normanpd.zip } }
    assert_redirected_to normanpd_url(@normanpd)
  end

  test "should destroy normanpd" do
    assert_difference("Normanpd.count", -1) do
      delete normanpd_url(@normanpd)
    end

    assert_redirected_to normanpds_url
  end
end
