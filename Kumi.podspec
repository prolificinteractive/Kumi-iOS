#
# Be sure to run `pod lib lint Kumi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Kumi"
  s.version          = "0.0.1"
  s.summary          = "An iOS framework for easy theme integration to your application"

  s.description      = <<-DESC
This framework provides all the values for fonts and colors you need to apply a theme to your project.
                       DESC

  s.homepage         = "https://github.com/prolificinteractive/Kumi-iOS"
  s.license          = 'MIT'
  s.author           = { "Prolific Interactive" => "info@prolificinteractive.com" }
  s.source           = { :git => "https://github.com/prolificinteractive/Kumi-iOS.git", :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.dependency 'Marker'
end
