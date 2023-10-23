Pod::Spec.new do |s|
  s.name         = "ENMobileVisionSDK"
  s.version      = "0.0.1"
  s.summary      = "A list of utilities and components used in ENMobileSDK echosystem"
  s.description  = <<-DESC
  This module contains many functions used by other modules.
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2023
                LICENSE
              }
  s.author = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENMobileVisionSDK/' + "0.0.1" + '/ENMobileVisionSDK.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworksVISION/ENMobileVisionSDK.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ENMobileUtils', '0.0.1'
  s.dependency 'ENMobileSDK', '0.0.99'
  s.dependency 'Factory'
  s.source_files  = "**/*.{m,h,swift}"
  s.resources = "**/*.{xcassets,strings,json,font}"
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
