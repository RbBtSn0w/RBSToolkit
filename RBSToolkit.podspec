#
# Be sure to run `pod lib lint RBSToolkit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    
    #***************Root Specification*****************************#
    
  s.name             = 'RBSToolkit'
  s.version          = '0.0.6'
  s.summary          = 'A foundatation iOS framework of RBSToolkit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/rbbtsn0w/RBSToolkit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rbbtsn0w' => 'hamiltonsnow@gmail.com' }
  s.source           = { :git => 'https://github.com/rbbtsn0w/RBSToolkit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/RbBtSn0w'

  s.static_framework = true
  
  #***************Platform*****************************#

  s.ios.deployment_target = '9.0'
  
  #***************File patterns*****************************#
  s.source_files = 'RBSToolkit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RBSToolkit' => ['RBSToolkit/Assets/*.png']
  # }
  
  
  s.pod_target_xcconfig = {
      'GCC_TREAT_WARNINGS_AS_ERRORS' => 'YES',
  }

  s.public_header_files = 'RBSToolkit/Classes/**/*.h'
  
  #***************Build settings*****************************#
   s.prefix_header_file = false
   s.frameworks = 'UIKit', 'CoreGraphics', 'Foundation'
   
  # s.dependency 'AFNetworking', '~> 2.3'
end
