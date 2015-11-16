module Upload
  class ImageForrest
    attr_reader :image

    def initialize(path)
      @image = Image.new(path)
    end

    def upload
      Response.new
    end
  end
end
