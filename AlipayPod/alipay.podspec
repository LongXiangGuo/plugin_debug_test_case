#
#  Be sure to run `pod spec lint alipay.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "alipay"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of alipay."

  spec.description  = <<-DESC
    "warpper AlipaySDK.framework for flutter plguin development"
                   DESC

  spec.homepage     = "https://openhome.alipay.com/platform/appManage.htm#/app/2021001140694105/overview"
  spec.license      = { :type => "BSD", :file => "LICENSE" }
  spec.author             = { "Guo Longxiang, (Longxiang.Guo@partner.bmw.com)" => "Longxiang.Guo@partner.bmw.com" }

  spec.platform     = :ios, "8.0"

  spec.source       = { :git => "https://github.com/LongXiangGuo/plugin_debug_test_case.git", :tag => "#{spec.version}" }
  spec.public_header_files = "AlipayPod/AlipaySDK.framework/Headers/*.{h,m}"
  spec.resource = "AlipayPod/bundle.bundle"
 
  spec.frameworks = "CFNetwork",
   "Foundation", 
   "UIKit", 
   "SystemConfiguration",
   "QuartzCore",
   "CoreGraphics",
   "CoreMotion",
   "CoreTelephony",
   "CoreText"

  spec.ios.vendored_frameworks = "AlipayPod/AlipaySDK.framework"
  spec.libraries = "c++", "z"

  spec.requires_arc = true

  spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/AlipaySDK/Headers" }

end
