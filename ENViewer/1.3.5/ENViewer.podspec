Pod::Spec.new do |s|
  s.name         = "ENViewer"
  s.version      = "1.3.5"
  s.summary      = "Module which let you see a PDF from either local source or SoftServer."
  s.description  = <<-DESC
  Module which let you see a PDF from either local source or SoftServer..
  DESC
  s.homepage     = "https://www.euronovategroup.com"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2022
                LICENSE
              }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENViewer/' + "1.3.5" + '/ENViewer.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENViewer.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ENPDFProcessor', "1.3.5" 
  s.dependency 'ENPresenter', "1.3.5"
  s.dependency 'ENSignatureBox', "1.3.5"
  s.dependency 'ENPDFMiddleware', "1.3.5"
  s.dependency 'ENSoftServer', "1.3.5"
  s.dependency 'ENUtils', "1.3.5"
  s.source_files  = "**/*.{m,h,swift}"
  s.resources = "**/*.{xcassets,ttf,png,bundle,xib}"
end
