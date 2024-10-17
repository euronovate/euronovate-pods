Pod::Spec.new do |s|
  s.name         = "ENMobileSetupSDK"
  s.version      = "0.0.1"
  s.summary      = "Setup module for initializing and configuring the entire library framework."
  s.description  = <<-DESC
  This SDK module provides the essential setup functionalities required to initialize the framework. It ensures the proper configuration and integration of all other modules, serving as the foundational entry point to enable full functionality of the library.
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2024
                LICENSE
              }
  s.author = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENMobileSetupSDK/' + "0.0.1" + '/ENMobileSetupSDK.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENMobileSetupSDK.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ENMobileCoreSDK', '~> 0.0.1'
  s.source_files  = "**/*.{m,h,swift}"
  s.resources = "**/*.{xcassets,strings,json,font}"
end
