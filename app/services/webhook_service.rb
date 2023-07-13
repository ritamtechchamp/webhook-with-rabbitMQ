class WebhookService
    def self.call(endpoint, message)
        faraday.post(endpoint.api_url) do |req|
            req.body = message
        end
    end
    
    private

    def faraday
        @faraday ||= Faraday.new(
            headers: {'Content-Type' => 'application/json'}
        )
    end
end