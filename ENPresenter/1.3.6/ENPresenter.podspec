Pod::Spec.new do |s|
  s.name         = "ENPresenter"
  s.version      = "1.3.6"
  s.summary      = "The source code used by ENViewer to show PDF."
  s.description  = <<-DESC
  The source code used by ENViewer to show PDF.
  DESC
  s.homepage     = "http://your.homepage/here"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2022
                LICENSE
              }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source = {
    :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENPresenter/' + "1.3.6" + '/ENPresenter.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = "XCFrameworks/ENPresenter.xcframework"
  s.platform = :ios
  s.swift_version = "5.0"
  s.ios.deployment_target  = '14.0'
  s.dependency 'ENMobileSDK', "1.3.6"
  s.source_files  = "**/*.{m,h,swift}"
  s.resources = ["**/*.{xcassets,ttf,png,bundle}","ENPresenterHTMLCode"]
end
