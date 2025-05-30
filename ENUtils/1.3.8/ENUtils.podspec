Pod::Spec.new do |s|
  s.name         = "ENUtils"
  s.version      = "1.3.8"
  s.summary      = "A list of utilities used in ENMobileSDK echosystem"
  s.description  = <<-DESC
  This module contains many functions used by other modules to encode/decode, translate and so on.
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2022
                LICENSE
              }
  s.author = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENUtils/' + "1.3.8" + '/ENUtils.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENUtils.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'SwiftKeychainWrapper'
  s.dependency 'ZIPFoundation', '~> 0.9'
  s.source_files  = "**/*.{m,h,swift}"
end
