class Publisher
    def self.publish(exchange, message = {})
        event = channel.fanout("blog.#{exchange}")
        event.publish(message.to_json)
    end

    def self.channel
        @channel ||= connection.create_channel
    end

    def self.connection
        @connection ||= Bunny.new.tap do |connect|
            connect.start
        end
    end
end