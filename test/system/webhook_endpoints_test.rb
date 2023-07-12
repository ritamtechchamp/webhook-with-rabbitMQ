require "application_system_test_case"

class WebhookEndpointsTest < ApplicationSystemTestCase
  setup do
    @webhook_endpoint = webhook_endpoints(:one)
  end

  test "visiting the index" do
    visit webhook_endpoints_url
    assert_selector "h1", text: "Webhook endpoints"
  end

  test "should create webhook endpoint" do
    visit webhook_endpoints_url
    click_on "New webhook endpoint"

    fill_in "Api url", with: @webhook_endpoint.api_url
    fill_in "Client name", with: @webhook_endpoint.client_name
    fill_in "Secret", with: @webhook_endpoint.secret
    click_on "Create Webhook endpoint"

    assert_text "Webhook endpoint was successfully created"
    click_on "Back"
  end

  test "should update Webhook endpoint" do
    visit webhook_endpoint_url(@webhook_endpoint)
    click_on "Edit this webhook endpoint", match: :first

    fill_in "Api url", with: @webhook_endpoint.api_url
    fill_in "Client name", with: @webhook_endpoint.client_name
    fill_in "Secret", with: @webhook_endpoint.secret
    click_on "Update Webhook endpoint"

    assert_text "Webhook endpoint was successfully updated"
    click_on "Back"
  end

  test "should destroy Webhook endpoint" do
    visit webhook_endpoint_url(@webhook_endpoint)
    click_on "Destroy this webhook endpoint", match: :first

    assert_text "Webhook endpoint was successfully destroyed"
  end
end
