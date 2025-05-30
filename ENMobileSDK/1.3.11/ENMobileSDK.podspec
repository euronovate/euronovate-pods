Pod::Spec.new do |s|
    s.name         = "ENMobileSDK"
    s.version      = "1.3.11"
    s.summary      = "It's the core module."
    s.description  = <<-DESC
    This module is included in every submodule, and keeps common functions to avoid circular dependencies between them. So it's not necessary to add to every module.
    DESC
    s.homepage     = "https://www.euronovategroup.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2022
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source = {
      :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENMobileSDK/' +  "1.3.11"  + '/ENMobileSDK.zip',
      :type => 'zip'
    }
    s.vendored_frameworks = "XCFrameworks/ENMobileSDK.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '14.5'
    s.dependency 'ENUtils', "1.3.11"
    s.dependency 'SwiftKeychainWrapper' 
    s.dependency 'ReachabilitySwift' 
    s.dependency 'AnyCodable-FlightSchool', '~> 0.6.0'
    s.dependency 'SwiftJWT'
    s.dependency 'BlueRSA', '~> 1.0.203'
    s.source_files  = "**/*.{m,h,swift}"
    s.resources = "**/*.{xcassets,ttf,png,bundle}"
  end
