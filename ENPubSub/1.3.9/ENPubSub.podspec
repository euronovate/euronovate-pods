Pod::Spec.new do |s|
  s.name         = "ENPubSub"
  s.version      = "1.3.9"
  s.summary      = "PubSub system communication to let sign or make other actions in realtime."
  s.description  = <<-DESC
  PubSub system communication to let sign or make other actions in realtime.
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2022
                LICENSE
              }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENPubSub/' + "1.3.9" + '/ENPubSub.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENPubSub.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ENUtils', "1.3.9" 
  s.dependency 'ENMobileSDK', "1.3.9"
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.0'
  s.dependency 'SwiftSignalRClient'
  s.source_files  = "**/*.{m,h,swift}"
end
