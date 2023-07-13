module SneakersBuilder
    module Workable
      extend ActiveSupport::Concern
  
      included do
        include Sneakers::Worker
      end
  
      class_methods do
        def define_work_method(queue_name:, queue_options:)
          define_queue_options(queue_name, queue_options)
          define_method(:work) do |message|      
            yield(message) if block_given?
            ack!       
          end
        end
  
        private
  
        def define_queue_options(queue_name, queue_options)
          from_queue(
            queue_name, queue_options
          )
        end
      end
    end
  end