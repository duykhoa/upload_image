module Upload
  module Response
    class Failure < Base
      def initialize(response, opts = {})
        super(response, opts)

        @message = opts[:message]
      end
    end
  end
end
