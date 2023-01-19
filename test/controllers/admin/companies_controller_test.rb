require "test_helper"

class Admin::CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get admin_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_company_url
    assert_response :success
  end

  test "should create company" do
    assert_difference("Company.count") do
      post admin_companies_url, params: { company: {  } }
    end

    assert_redirected_to admin_company_url(Company.last)
  end

  test "should show company" do
    get admin_company_url(@company)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_company_url(@company)
    assert_response :success
  end

  test "should update company" do
    patch admin_company_url(@company), params: { company: {  } }
    assert_redirected_to admin_company_url(@company)
  end

  test "should destroy company" do
    assert_difference("Company.count", -1) do
      delete admin_company_url(@company)
    end

    assert_redirected_to admin_companies_url
  end
end
