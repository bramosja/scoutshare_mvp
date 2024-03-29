require "test_helper"

class SitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site = sites(:one)
  end

  test "should get index" do
    get sites_url, as: :json
    assert_response :success
  end

  test "should create site" do
    assert_difference("Site.count") do
      post sites_url, params: { site: { description: @site.description, name: @site.name, needs_permit: @site.needs_permit, notes: @site.notes } }, as: :json
    end

    assert_response :created
  end

  test "should show site" do
    get site_url(@site), as: :json
    assert_response :success
  end

  test "should update site" do
    patch site_url(@site), params: { site: { description: @site.description, name: @site.name, needs_permit: @site.needs_permit, notes: @site.notes } }, as: :json
    assert_response :success
  end

  test "should destroy site" do
    assert_difference("Site.count", -1) do
      delete site_url(@site), as: :json
    end

    assert_response :no_content
  end
end
