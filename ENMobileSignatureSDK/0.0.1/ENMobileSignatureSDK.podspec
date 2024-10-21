Pod::Spec.new do |s|
  s.name         = "ENMobileSignatureSDK"
  s.version      = "0.0.1"
  s.summary      = "Signature acquisition module ensuring authenticity and biometric verification."
  s.description  = <<-DESC
  This SDK module handles the complete process of signature acquisition in all its forms, ensuring authenticity and biometric verification. It provides the necessary functionalities for secure and reliable signature capture, serving as a critical component for legal and secure document signing within the framework.
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2024
                LICENSE
              }
  s.author = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENMobileSignatureSDK/' + "0.0.1" + '/ENMobileSignatureSDK.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENMobileSignatureSDK.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ENMobileCoreSDK', '~> 0.0.1'
  s.source_files  = "**/*.{m,h,swift}"
  s.resources = "**/*.{xcassets,strings,json,font}"
end
