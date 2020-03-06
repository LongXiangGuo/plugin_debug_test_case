#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint lib_demo_c.podspec' to validate before publishing.
#

Pod::Spec.new do |s|
  s.name             = 'pod_lib_a'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
              A new flutter plugin project.
                       DESC
  s.homepage         = '"https://lbs.amap.com/api/"'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'zhangkui305@163.com.com' }
  s.source           = { :git => 'https://gitee.com/jiodg45/plugin-debug-pods.git', tag: '#{s.version}' },
 
  s.source_files = 'pod_lib_a/include/**/*'
  
  s.public_header_files = 'pod_lib_a/include/**/*.h'

  s.dependency 'Flutter'
  s.platform = :ios, '8.0'
  s.libraries = "z"
  s.vendored_library = '**/libStaticFrameworkA.a'
  s.requires_arc = true

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
