class CreateWebhookEndpoints < ActiveRecord::Migration[7.0]
  def change
    create_table :webhook_endpoints do |t|
      t.string :client_name
      t.string :api_url
      t.string :secret

      t.timestamps
    end
  end
end
