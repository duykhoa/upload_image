require 'rest-client'

module Upload
  class ImageForrest
    HOST = "http://uploads.im/api"

    attr_reader :image

    def initialize(path)
      @image = Image.new(path)
    end

    def upload
      unless @image.exist?
        return Response::Failure.new("not_exist")
      end

      response = RestClient.post HOST, thumb_width: '500', upload: @image.file
      if response == 200
        Reponse::Failure.new(response)
      else
        Reponse::Success.new(response)
      end
    end
  end
end
