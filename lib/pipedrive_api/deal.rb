module PipedriveAPI
  class Deal < Base

    class << self
      def duplicate(id)
        response = post "#{resource_path}/#{id}/duplicate"
        handle response
      end
      
      def add_a_deal
        response = post resource_path, body: params.to_json
        handle response
      end
      
    end
  end
end
