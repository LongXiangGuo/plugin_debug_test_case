#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint lib_demo_d.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'lib_demo_d'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*', 'include'
  s.public_header_files = 'Classes/**/*.h','include/StaticFrameworkA.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'
  s.vendored_libraries = 'libStaticFrameworkA.a'
  s.static_framework = true

  s.requires_arc = true
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/include/" }

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
