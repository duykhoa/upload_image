module Upload
  module Response
    class Success < Base
      def initialize(response, opts={})
        super(response, opts)

        @url = response["data"]["thumb_url"]

        # carefully check the data key here
        # TODO: add condition to check if there is data key
        #
        @original_url = response["data"]["img_url"]
      end
    end
  end
end
