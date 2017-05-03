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
    s.source = { :git => 'https://github.com/soffes/CommonCrypto.git', :tag => s.version }
    s.pod_target_xcconfig = {
        'MODULEMAP_FILE[sdk=iphoneos*]' => '$(SRCROOT)/CommonCrypto/iphoneos.modulemap',
        'MODULEMAP_FILE[sdk=iphonesimulator*]' => '$(SRCROOT)/CommonCrypto/iphonesimulator.modulemap',
        'MODULEMAP_FILE[sdk=watchos*]' => '$(SRCROOT)/CommonCrypto/watchos.modulemap',
        'MODULEMAP_FILE[sdk=watchsimulator*]' => '$(SRCROOT)/CommonCrypto/watchsimulator.modulemap',
        'MODULEMAP_FILE[sdk=macosx*]' => '$(SRCROOT)/CommonCrypto/macosx.modulemap',
        'MODULEMAP_FILE[sdk=appletvos*]' => '$(SRCROOT)/CommonCrypto/appletvos.modulemap',
        'MODULEMAP_FILE[sdk=appletvsimulator*]' => '$(SRCROOT)/CommonCrypto/appletvsimulator.modulemap'
    }
    s.preserve_paths = 'CommonCrypto/*'
end
