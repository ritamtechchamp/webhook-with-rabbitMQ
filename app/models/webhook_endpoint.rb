class WebhookEndpoint < ApplicationRecord
    before_save :generate_secret

    def generate_secret
        self.secret = SecureRandom.hex(16)
    end

    def queue_name
        client_name.parameterize.underscore + SecureRandom.hex(4)
    end
end
