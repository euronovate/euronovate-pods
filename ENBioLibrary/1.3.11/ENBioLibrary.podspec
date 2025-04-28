Pod::Spec.new do |s|
  s.name         = "ENBioLibrary"
  s.version      = "1.3.11"
  s.summary      = "It's the bridge between SignatureBox datas and XML biodata generator from ObjC ENBioLibrary."
  s.description  = <<-DESC
  It's the bridge between SignatureBox datas and XML biodata generator from ObjC ENBioLibrary.
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2022
                LICENSE
              }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENBioLibrary/' + "1.3.11" + '/ENBioLibrary.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENBioLibrary.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.5'
  s.dependency 'ENUtils', "1.3.11"
  s.dependency 'ENBioLibraryObjC', "1.3.11"
  s.dependency 'ENMobileSDK', "1.3.11"
  s.source_files  = "**/*.{m,h,swift}"
end
