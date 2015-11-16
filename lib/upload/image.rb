module Upload
  Response = Struct.new(:status)

  class Image
    attr_reader :path

    def initialize(path)
      @path = path
    end

    def upload
      Response.new(:success)
    end
  end
end
