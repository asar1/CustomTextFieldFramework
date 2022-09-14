
Pod::Spec.new do |spec|
  spec.name             = 'CustomTextFieldFramework'
  spec.version          = '0.0.1'
  spec.license          = { :type => 'None' }
  spec.homepage         = 'https://github.com/asar1/CustomTextFieldFramework'
  spec.authors          = { 'Asar1' => 'asarsaleem@gmail.com' }
  spec.summary          = 'ARC and GCD Compatible CustomTextFieldFramework Class for iOS and macOS.'
  spec.source           = { :git => 'https://github.com/asar1/CustomTextFieldFramework.git', :tag => 'v0.0.1' }
  spec.source_files     = 'CustomTextFieldFramework.h,m'
  spec.framework        = 'SystemConfiguration'
  spec.requires_arc     = true
end
