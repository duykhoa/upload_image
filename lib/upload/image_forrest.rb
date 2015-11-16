module Upload
  class ImageForrest
    attr_reader :image

    def initialize(path)
      @image = Image.new(path)
    end

    def upload
      Response::Success.new
    end
  end
end
