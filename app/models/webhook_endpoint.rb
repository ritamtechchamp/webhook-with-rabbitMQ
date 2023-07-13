class WebhookEndpoint < ApplicationRecord
    before_save :generate_secret, :generate_queue_name

    validates :api_url, :client_name, presence: true

    def generate_secret
        self.secret = SecureRandom.hex(16)
    end

    def generate_queue_name
        self.queue_name = client_name.parameterize.underscore + SecureRandom.hex(4)
    end
end
