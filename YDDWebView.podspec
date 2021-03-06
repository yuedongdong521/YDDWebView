#
# Be sure to run `pod lib lint YDDWebView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YDDWebView'
  s.version          = '0.0.2'
  s.summary          = '封装wkwebview'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  封装wkwebview， 对wkwebview js交互进行block封装
                       DESC

  s.homepage         = 'https://github.com/yuedongdong521/YDDWebView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuedongdong521' => '1067221279@qq.com' }
  s.source           = { :git => 'https://github.com/yuedongdong521/YDDWebView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'YDDWebView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YDDWebView' => ['YDDWebView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
