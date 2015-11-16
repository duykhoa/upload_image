require 'rest-client'

module Upload
  class ImageForrest
    HOST = "http://uploads.im/api"

    attr_reader :image

    def initialize(path)
      @image = Image.new(path)
    end

    def upload
      return Response::Failure.new("not_exist") unless @image.exist?

      response = RestClient.post HOST, thumb_width: '500', upload: @image.file

      if response.code == 200
        Response::Success.new(response)
      else
        Response::Failure.new(response)
      end
    end
  end
end
