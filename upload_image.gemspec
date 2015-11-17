# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'upload/version'

Gem::Specification.new do |spec|
  spec.name          = "upload_image"
  spec.version       = UploadImage::VERSION
  spec.authors       = ["Duy Khoa"]
  spec.email         = ["duykhoa12t@gmail.com"]

  spec.summary       = "A tiny gem to upload image to upload.im"
  spec.description   = "Use RestClient to upload image to server"
  spec.homepage      = "https://github.com/duykhoa/upload_image"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rest-client", "~> 1.8"
end
