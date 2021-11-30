Pod::Spec.new do |spec|
  spec.name                     = 'Angle'
  spec.version                  = '1.2.2'
  spec.license                  = { :type => 'MIT', :file => 'LICENSE.txt' }
  spec.homepage                 = 'https://github.com/geonu1109/Angle'
  spec.authors                  = { 'Geonu Jeon' => 'geonu1109@gmail.com' }
  spec.summary                  = 'Angle is a simple Swift library that provides Angle structure representing angles.'
  spec.source                   = { :git => 'https://github.com/geonu1109/Angle.git', :tag => '1.2.2' }
  spec.swift_version            = '5.0'
  spec.ios.deployment_target    = '11.0'
  spec.source_files             = 'Sources/**/*.swift'
  spec.framework                = 'Foundation'
end
