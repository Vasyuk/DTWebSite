require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get pagedaccueile" do
    get static_pages_pagedaccueile_url
    assert_response :success
  end

  test "should get portfolio" do
    get static_pages_portfolio_url
    assert_response :success
  end

  test "should get contacts" do
    get static_pages_contacts_url
    assert_response :success
  end

end
