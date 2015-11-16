module Upload
  module Response
    class Base
      def initialize(response, opts={})
        @response = response
        @status = opts[:status]
        @status = opts[:message]
      end
    end
  end
end
