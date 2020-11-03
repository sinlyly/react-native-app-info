require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-app-info"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "9.0", :tvos => "11.0" }
  s.source       = { :git => "https://github.com/sinlyly/react-native-app-info.git", :tag => "#{s.version}" }

  s.source_files = "RNAppInfo/*.{h,m}"
  s.homepage     = "https://github.com/sinlyly/react-native-app-info"

  s.dependency "React"
end
