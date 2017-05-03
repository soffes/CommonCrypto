Pod::Spec.new do |s|
    s.name = 'CommonCrypto'
    s.version = '1.1.1'
    s.summary = 'Simple CommonCrypto wrapper for Swift for macOS, iOS, watchOS, and tvOS with Carthage and Cocoapods support.'
    s.homepage = 'https://github.com/soffes/CommonCrypto'
    s.license = 'MIT'
    s.author = 'Sam Soffes'
    s.ios.deployment_target = '9.0'
    s.tvos.deployment_target = '9.0'
    s.osx.deployment_target = '10.11'
    s.watchos.deployment_target = '2.0'
    s.source = { :git => 'https://github.com/SerenadeX/CommonCrypto.git', :tag => s.version }
    s.pod_target_xcconfig = {
        'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]' => '$(SRCROOT)/CommonCrypto/iphoneos',
        'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]' => '$(SRCROOT)/CommonCrypto/iphonesimulator',
        'SWIFT_INCLUDE_PATHS[sdk=watchos*]' => '$(SRCROOT)/CommonCrypto/watchos',
        'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]' => '$(SRCROOT)/CommonCrypto/watchsimulator',
        'SWIFT_INCLUDE_PATHS[sdk=macosx*]' => '$(SRCROOT)/CommonCrypto/macosx',
        'SWIFT_INCLUDE_PATHS[sdk=appletvos*]' => '$(SRCROOT)/CommonCrypto/appletvos',
        'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(SRCROOT)/CommonCrypto/appletvsimulator'
    }
    s.preserve_paths = 'CommonCrypto/*'
end
