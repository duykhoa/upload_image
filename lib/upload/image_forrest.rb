module Upload
  class ImageForrest
    attr_reader :image

    def initialize(path)
      @image = Image.new(path)
    end

    def upload
      unless @image.exist?
        Response::Failure.new("not_exist")
      end
    end
  end
end
