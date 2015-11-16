module Upload
  module Response
    class Success < Base
      def initialize(response, opts={})
        super(response, opts)

        # Use thumb url instead of the original one
        # The thumb url has fixed width for now (500px)
        # Will be configuarable soon.
        # TODO:
        #   - Check the data field before return
        #   - Allow user to config the size of thumb
        #
        @url = response["data"]["thumb_url"]

        # carefully check the data key here
        # TODO: add condition to check if there is data key
        #
        @original_url = response["data"]["img_url"]
      end
    end
  end
end
