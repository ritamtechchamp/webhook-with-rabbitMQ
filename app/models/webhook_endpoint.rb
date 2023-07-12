class WebhookEndpoint < ApplicationRecord
    before_save :generate_secret

    def generate_secret
        self.secret = SecureRandom.hex(16)
    end
end
