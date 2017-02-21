#
# Be sure to run `pod lib lint MHCrypto.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MHCrypto'
  s.version          = '0.1.0'
  s.summary          = 'Objective C - HMAC implementation for NSString and NSData(raw)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Objective C - HMAC implementation for NSString and NSData(Raw)'

  s.homepage         = 'https://github.com/michaelhenry/MHCrypto'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michael Henry Pantaleon' => 'me@iamkel.net' }
  s.source           = { :git => 'https://github.com/michaelhenry/MHCrypto.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/michaelhenry119'

  s.ios.deployment_target = '8.0'
  s.source_files = 'MHCrypto/Classes/**/*'
  s.pod_target_xcconfig = {
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

end
