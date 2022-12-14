
Pod::Spec.new do |spec|
  spec.name             = "CustomTextFieldFramework"
  spec.version          = "1.0.0"
  spec.license          = "MIT"
  spec.homepage         = "https://github.com/asar1/CustomTextFieldFramework"
  spec.authors          = { "Asar1" => "asarsaleem@gmail.com" }
  spec.summary          = "The open source Custom TextField Framework Class for iOS and macOS."
  spec.source           = { :git => "https://github.com/asar1/CustomTextFieldFramework.git", :tag => "v1.0.0" }
  spec.platform         = :ios, "12.0"
  spec.swift_version    = "4.0"
  spec.source_files     = "CustomTextFieldFramework/**/*"
  spec.requires_arc     = true
end
