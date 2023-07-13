class CreateQueue
    def self.add(exchange, queue_name)
        event = channel.fanout("blog.#{exchange}")
        channel.queue(queue_name).bind(event)
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