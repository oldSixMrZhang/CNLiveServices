#
# Be sure to run `pod lib lint CNLiveServices.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CNLiveServices'
  s.version          = '0.0.2'
  s.summary          = 'CNLiveServices'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 网家家 - 业务接口协议库.
                       DESC

  s.homepage         = 'http://bj.gitlab.cnlive.com/ios-team/CNLiveServices'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '153993236@qq.com' => 'zhangxiaowen@cnlive.com' }
  s.source           = { :git => 'http://bj.gitlab.cnlive.com/ios-team/CNLiveServices.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.source_files = 'CNLiveServices/Classes/CNLiveServices.h'
   
    # 广告页
    s.subspec 'ADPage' do |ss|
       ss.source_files = 'CNLiveServices/Classes/CNLiveADServiceProtocol/*.{h,m}'
    end
   
  # 首页
  s.subspec 'NetHome' do |ss|
      ss.source_files = 'CNLiveServices/Classes/NetHome/*.{h,m}'
  end
  
  # 视讯(分类)
  s.subspec 'Category' do |ss|
      ss.source_files = 'CNLiveServices/Classes/Category/*.{h,m}'
  end
  
  # 服务
  s.subspec 'Service' do |ss|
      ss.source_files = 'CNLiveServices/Classes/Service/*.{h,m}'
  end
  
  # 我的
  s.subspec 'Mine' do |ss|
      ss.source_files = 'CNLiveServices/Classes/Mine/*.{h,m}'
  end
  
  # 登录
  s.subspec 'Login' do |ss|
      ss.source_files = 'CNLiveServices/Classes/Login/*.{h,m}'
  end
  
  # 二维码
  s.subspec 'QrCode' do |ss|
      ss.source_files = 'CNLiveServices/Classes/QrCode/*.{h,m}'
  end
  
  # 积分
  s.subspec 'Integral' do |ss|
      ss.source_files = 'CNLiveServices/Classes/Integral/*.{h,m}'
  end
  
  # s.resource_bundles = {
  #   'CNLiveServices' => ['CNLiveServices/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CNLiveBeeHive'

end
