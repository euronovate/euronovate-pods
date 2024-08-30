Pod::Spec.new do |s|
  s.name         = "ENSignatureBox"
  s.version      = "1.3.7"
  s.summary      = "Draw on a canvas your signature with either pen or finger."
  s.description  = <<-DESC
  Draw on a canvas your signature with either pen or finger.
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2022
                 Permission is granted to...
                LICENSE
              }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENSignatureBox/' + "1.3.7" + '/ENSignatureBox.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENSignatureBox.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ENBioLibrary', "1.3.7"
  s.dependency 'ENUtils', "1.3.7"
  s.source_files  = "**/*.{m,h,swift}"
  s.resources = "**/*.{xcassets,ttf,png,bundle,xib}"
end
