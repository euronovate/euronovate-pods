Pod::Spec.new do |s|
    s.name         = "ENBioLibraryObjC"
    s.version      = "1.3.8"
    s.summary      = "Delegate module for xml bioData generation."
    s.description  = <<-DESC
    Delegate module for xml bioData generation.
    DESC
    s.homepage     = "https://www.euronovategroup.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2022
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source = {
      :http => 'https://xcframeworks.s3.eu-south-1.amazonaws.com/ENBioLibraryObjC/'  + "1.3.8" +  '/ENBioLibraryObjC.zip',
      :type => 'zip'
    }  
    s.vendored_frameworks = "XCFrameworks/ENBioLibraryObjC.xcframework"
    s.platform = :ios
    s.ios.deployment_target  = '14.0'
    s.source_files  = "**/*.{m,h,swift}"
  end