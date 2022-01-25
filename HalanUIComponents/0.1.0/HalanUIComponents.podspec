Pod::Spec.new do |s|
s.platform = :ios
s.ios.deployment_target = '13.0'
s.name = "HalanUIComponents"
s.summary = "HalanUIComponents lets a user use Halan basic UI Component like HalanButton"
s.requires_arc = true
s.version = "0.1.0"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Moamen Abd Elgawad" => "moamenzalabia@gmail.com" }
s.homepage = "https://github.com/Moamenzalabia/HalanUIComponents.git"
s.source = { :git => "https://github.com/Moamenzalabia/HalanUIComponents.git",
             :tag => "#{s.version}" }

s.framework = "UIKit"
s.source_files = "HalanUIComponents/Classes/**/*.{swift}"
s.resources = "HalanUIComponents/Resources/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
s.swift_version = "5.2"

end
