Pod::Spec.new do |s|
    s.name         = "ENPDFProcessor"
    s.version      = "1.3.4"
    s.summary      = "Elaborate pdfs locally or from SoftServer automatically."
    s.description  = <<-DESC
    Elaborate pdfs locally or from SoftServer automatically.
    DESC
    s.homepage     = "https://www.euronovategroup.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2022
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source = {
      :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENPDFProcessor/' + "1.3.4" + '/ENPDFProcessor.zip',
      :type => 'zip'
    }
    s.vendored_frameworks = "XCFrameworks/ENPDFProcessor/ENPDFProcessor.xcframework", "XCFrameworks/ENPDFProcessor/OpenSSL.xcframework", "XCFrameworks/ENPDFProcessor/ENLibPdf.xcframework"
    s.platform = :ios
    s.ios.deployment_target  = '14.0'
    s.dependency 'ENMobileSDK', "1.3.4"
    s.source_files  = "**/*.{m,h,swift}"
    s.resources = "**/*.{xcassets,ttf,png,bundle}"
  end
