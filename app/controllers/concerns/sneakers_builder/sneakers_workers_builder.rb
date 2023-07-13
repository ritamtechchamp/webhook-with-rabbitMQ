module SneakersBuilder
  class SneakersWorkersBuilder
    class << self
      def call(klass_name, queue_name, queue_options, &message_handler)
        Object.const_set(klass_name.classify, Class.new do
         include SneakersBuilder::Workable

         define_work_method(
           queue_name: queue_name, queue_options: queue_options, &message_handler
         )
        end)
      end
    end
  end
end