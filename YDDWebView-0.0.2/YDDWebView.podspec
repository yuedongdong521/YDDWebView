Pod::Spec.new do |s|
  s.name = "YDDWebView"
  s.version = "0.0.2"
  s.summary = "\u5C01\u88C5wkwebview"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"yuedongdong521"=>"1067221279@qq.com"}
  s.homepage = "https://github.com/yuedongdong521/YDDWebView"
  s.description = "\u5C01\u88C5wkwebview\uFF0C \u5BF9wkwebview js\u4EA4\u4E92\u8FDB\u884Cblock\u5C01\u88C5"
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/YDDWebView.framework'
end
