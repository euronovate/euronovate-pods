Pod::Spec.new do |s|
  s.name         = "ENMobileOCRSDK"
  s.version      = "1.0.2"
  s.summary      = "A list of OCR utilities and components used in ENMobileSDK echosystem"
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
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENMobileOCRSDK/' + "1.0.2" + '/ENMobileOCRSDK.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworksOCR/ENMobileOCRSDK.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ENMobileCoreSDK', '0.0.1'
  s.dependency 'ENMobileSDK', '1.3.4'
  s.dependency 'Factory', '2.2.0'
  s.source_files  = "**/*.{m,h,swift}"
  s.resources = "**/*.{xcassets,strings,json,font}"
end
