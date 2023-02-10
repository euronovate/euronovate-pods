Pod::Spec.new do |s|
    s.name         = "ENPDFMiddleware"
    s.version      = "#{ ENV['VERSION_NUMBER'] }"
    s.summary      = "It's a middleware between local and online PDF management."
    s.description  = <<-DESC
    It's a middleware between local and online PDF management.
    DESC
    s.homepage     = "https://www.euronovategroup.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2022
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source = {
      :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENPDFMiddleware/' + "#{ ENV['VERSION_NUMBER'] }" + '/ENPDFMiddleware.zip',
      :type => 'zip'
    }
    s.vendored_frameworks = "XCFrameworks/ENPDFMiddleware.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '14.0'
    s.dependency 'ENMobileSDK', "#{ ENV['VERSION_NUMBER'] }" 
    s.dependency 'ENSoftServer', "#{ ENV['VERSION_NUMBER'] }"
    s.dependency 'ENPDFProcessor', "#{ ENV['VERSION_NUMBER'] }"
    s.dependency 'KituraContracts'
    s.dependency 'AnyCodable-FlightSchool', '~> 0.6.0'
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  end