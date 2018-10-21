#
# Be sure to run `pod lib lint YPDemoLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YPDemoLib'
  s.version          = '0.1.0'
  s.summary          = '测试YPDemoLib组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
测试YPDemoLib组件库测试YPDemoLib组件库测试YPDemoLib组件库测试YPDemoLib组件库
                       DESC

  s.homepage         = 'https://github.com/MichaelHuyp/YPDemoLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '胡云鹏' => 'huyunpeng@didichuxing.com' }
  s.source           = { :git => 'https://github.com/MichaelHuyp/YPDemoLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'


  s.subspec 'Category' do |ss|
    ss.source_files = 'YPDemoLib/Category/*'
  end

  s.subspec 'LoadResourceDemo' do |ss|
    ss.source_files = 'YPDemoLib/LoadResourceDemo/*'
    ss.resource_bundles = {
      'YPDemoLib' => ["YPDemoLib/LoadResourceDemo/Resource/*"]
    }
  end





  
  # s.resource_bundles = {
  #   'YPDemoLib' => ['YPDemoLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
