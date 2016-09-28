require 'rest-client'

module Upload
  class ImageForest
    HOST = "http://uploads.im/api".freeze

    attr_reader :image

    # Public: Init a ImageForest Object
    #
    # path  - Image's path, right now must be an absolute path
    #
    # Example
    #
    #   path = '/Users/kevin/Desktop/image.jpeg'
    #   image_forest = ImageForest.new(path)
    #
    # Returns an ImageForest object
    #
    # TODO:
    #   -  path can be a relative path
    #   -  how about upload a list of images (idea)
    def initialize(path)
      @image = Image.new(path)
    end

    # Public: upload an image to HOST
    #
    # Example
    #
    #  Upload::ImageForest.new(path).upload
    #
    # Returns an Response object
    #   Can be Response::Failure and Response::Success
    #
    #   - If @image isn't exist -> return a Response::Failure with status "File not found
    #   - If response.code is 200 -> return a Response::Success with response object
    #   - If response.code isn't 200 (4x, 5x) -> return a Response::Failure
    def upload
      return Response::Failure.new(nil, message: "File is not exist") unless @image.exist?

      response = RestClient.post HOST, thumb_width: '500', upload: @image.file

      if response.code == 200
        Response::Success.new(response)
      else
        Response::Failure.new(response)
      end
    end
  end
end
