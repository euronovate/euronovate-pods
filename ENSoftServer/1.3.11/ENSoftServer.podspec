Pod::Spec.new do |s|
    s.name         = "ENSoftServer"
    s.version      = "1.3.11"
    s.summary      = "Communication between SDK and SoftServer webserver."
    s.description  = <<-DESC
    Communication between SDK and SoftServer webserver.
    DESC
    s.homepage     = "https://www.euronovategroup.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2022
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source = {
      :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENSoftServer/' + "1.3.11" + '/ENSoftServer.zip',
      :type => 'zip'
    }
    s.vendored_frameworks = "XCFrameworks/ENSoftServer.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '14.5'
    s.dependency 'ENUtils', "1.3.11" 
    s.dependency 'ENMobileSDK', "1.3.11"
    s.dependency 'AnyCodable-FlightSchool', '~> 0.6.0'
    s.source_files  = "**/*.{m,h,swift}"
  end
