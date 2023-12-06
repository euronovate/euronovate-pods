Pod::Spec.new do |s|
    s.name         = "ENLibPdf"
    s.version      = "2.3.3"
    s.summary      = "Manage and elaborate pdfs."
    s.description  = <<-DESC
    Manage and elaborate pdfs.
    DESC
    s.homepage     = "https://www.euronovategroup.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2023
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source = {
      :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENLibPdf/' + "2.3.3" + '/ENLibPdf.zip',
      :type => 'zip'
    }
    s.vendored_frameworks = "XCFrameworks/ENLibPdf.xcframework"
    s.platform = :ios
    s.ios.deployment_target  = '14.0'
  end
