class AddQueueNameToWebhookEndpoints < ActiveRecord::Migration[7.0]
  def change
    add_column :webhook_endpoints, :queue_name, :string
  end
end
