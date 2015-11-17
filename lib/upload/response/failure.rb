module Upload
  module Response
    class Failure < Base
      attr_reader :message

      def initialize(response, opts = {})
        super(response, opts)

        @message = opts[:message]
      end
    end
  end
end
