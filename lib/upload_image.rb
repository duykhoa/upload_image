$LOAD_PATH.unshift(File.join(File.dirname(__FILE__)))

require "upload/version"
require "upload/image_forrest"
require "upload/image"
require "upload/response"

require "upload/response/failure"
require "upload/response/success"

module Upload
end
