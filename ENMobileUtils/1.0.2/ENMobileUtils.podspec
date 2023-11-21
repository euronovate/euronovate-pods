Pod::Spec.new do |s|
  s.name         = "ENMobileUtils"
  s.version      = "1.0.2"
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
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENMobileUtils/' + "1.0.2" + '/ENMobileUtils.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENMobileUtils.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'Alamofire'
  s.dependency 'Factory', '2.2.0'
  s.dependency 'SwiftJWT'
  s.dependency 'ZIPFoundation', '~> 0.9'
  s.source_files  = "**/*.{m,h,swift}"
  s.exclude_files = "**/ENMobileUtils/ENMobileUtils/*.{m,h,swift}"
end
