#
# Be sure to run `pod lib lint BlockchainSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TangemWalletCore'
  s.version          = '3.2.4-tangem1'
  s.summary          = 'Use TW xcframework for Tangem integration'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TW library for Tangem integration
                       DESC

  s.homepage         = 'https://github.com/tangem/wallet-core-binaries-ios'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tangem AG' => '' }
  s.source           = { :path => '.' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.dependency 'SwiftProtobuf'

  s.vendored_frameworks = '**/WalletCore.xcframework'

end
