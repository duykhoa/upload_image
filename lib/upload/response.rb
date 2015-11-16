module Upload
  module Response
    class Base
      attr :response

      def initialize(response, opts={})
        @response = JSON.parse response
      end
    end
  end
end
