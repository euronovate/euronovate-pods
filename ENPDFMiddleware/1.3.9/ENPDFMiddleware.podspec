Pod::Spec.new do |s|
    s.name         = "ENPDFMiddleware"
    s.version      = "1.3.9"
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
      :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENPDFMiddleware/' + "1.3.9" + '/ENPDFMiddleware.zip',
      :type => 'zip'
    }
    s.vendored_frameworks = "XCFrameworks/ENPDFMiddleware.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '14.0'
    s.dependency 'ENMobileSDK', "1.3.9" 
    s.dependency 'ENSoftServer', "1.3.9"
    s.dependency 'ENPDFProcessor', "1.3.9"
    s.dependency 'ENSignatureBox', "1.3.9"
    s.dependency 'KituraContracts'
    s.dependency 'AnyCodable-FlightSchool', '~> 0.6.0'
    s.source_files  = "**/*.{m,h,swift}"
  end
