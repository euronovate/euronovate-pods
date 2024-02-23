Pod::Spec.new do |s|
  s.name         = "ENMobileCoreSDK"
  s.version      = "0.0.1"
  s.summary      = "Essential base components for the library's functionality, supporting all other modules."
  s.description  = <<-DESC
  This SDK module is the essential base containing the necessary components for the library's functionality. It lays the groundwork for the integration and expansion of additional logic and features in other modules.
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2024
                LICENSE
              }
  s.author = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENMobileCoreSDK/' + "0.0.1" + '/ENMobileCoreSDK.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENMobileCoreSDK.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ZIPFoundation', '~> 0.9'
  s.dependency 'Alamofire', '5.8.0'
  s.dependency 'Factory', '2.2.0'
  s.dependency 'SwiftJWT', '3.6.200'
  s.source_files  = "**/*.{m,h,swift}"
  s.resources = "**/*.{xcassets,strings,json,font}"
end
