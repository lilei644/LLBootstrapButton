Pod::Spec.new do |s|
  s.name         = "LLBootstrapButton"
  s.version      = "0.0.1"
  s.summary      = "The easiest way to use LLBootstrapButton."
  s.homepage     = "https://github.com/lilei644/LLBootstrapButton"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "lilei644" => "1793161563@qq.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/lilei644/LLBootstrapButton.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.source_files  = "LLBootstrap/*.{h,m}"
  s.resources  = "LLBootstrap/LLBootstrapFont.bundle"
  s.framework = "UIKit","CoreText"
end
