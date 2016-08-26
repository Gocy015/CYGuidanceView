Pod::Spec.new do |s|

s.name             = "CYGuidanceView"
s.version          = "0.0.1"
s.summary          = "A light weight guidance view for iOS !"

s.homepage         = "https://github.com/Gocy015/CYGuidanceView"

s.license          = 'MIT'
s.author           = { "Gocy" => "651023362@qq.com" }
s.source           = { :git => "https://github.com/Gocy015/CYGuidanceView.git", :tag => "0.0.1" }

s.platform     = :ios
s.ios.deployment_target = '8.0'
s.requires_arc = true
s.framework    = 'UIKit'
s.source_files = 'CYGuidanceView/*'

end