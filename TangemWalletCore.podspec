#
# Be sure to run `pod lib lint BlockchainSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TangemWalletCore'
  s.version          = '4.0.21-tangem3'
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
  s.author           = { 'Tangem' => 'hello@tangem.com' }
  s.social_media_url = 'https://twitter.com/Tangem'
  s.source           = { :path => '.' }
  s.ios.deployment_target = '14.5'
  s.ios.swift_version = '5.0'
  s.dependency 'SwiftProtobuf', '=1.25.2'
  s.vendored_frameworks = 'WalletCore.xcframework'

end
