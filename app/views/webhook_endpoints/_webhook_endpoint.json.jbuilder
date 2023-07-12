json.extract! webhook_endpoint, :id, :client_name, :api_url, :secret, :created_at, :updated_at
json.url webhook_endpoint_url(webhook_endpoint, format: :json)
