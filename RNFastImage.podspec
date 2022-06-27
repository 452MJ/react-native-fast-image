require 'json'

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name          = "RNFastImage"
  s.version       = package['version']
  s.summary       = package['description']
  s.authors       = { "Dylan Vann" => "dylan@dylanvann.com" }
  s.homepage      = "https://github.com/452MJ/react-native-fast-image-jerry#readme"
  s.license       = "MIT"
  s.platforms     = { :ios => "8.0", :tvos => "9.0" }
  s.framework     = 'UIKit'
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/452MJ/react-native-fast-image-jerry.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React-Core'
  s.dependency 'SDWebImage', '~> 5.11.1'
  s.dependency 'SDWebImageWebPCoder', '~> 0.8.4'
end
