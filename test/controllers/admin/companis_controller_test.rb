require "test_helper"

class Admin::CompanisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compani = companis(:one)
  end

  test "should get index" do
    get admin_companis_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_compani_url
    assert_response :success
  end

  test "should create compani" do
    assert_difference("Compani.count") do
      post admin_companis_url, params: { compani: {  } }
    end

    assert_redirected_to admin_compani_url(Compani.last)
  end

  test "should show compani" do
    get admin_compani_url(@compani)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_compani_url(@compani)
    assert_response :success
  end

  test "should update compani" do
    patch admin_compani_url(@compani), params: { compani: {  } }
    assert_redirected_to admin_compani_url(@compani)
  end

  test "should destroy compani" do
    assert_difference("Compani.count", -1) do
      delete admin_compani_url(@compani)
    end

    assert_redirected_to admin_companis_url
  end
end
