

Pod::Spec.new do |s|

  s.name         = "ColorfulWoodUIBase"
  s.version      = "1.1.4"
  s.summary      = "User Interface Design."

  s.homepage     = "https://github.com/gs01md"

  s.license      = "MIT"

  s.author       = { "ColorfulWood" => "103377808@qq.com" }

  s.source       = { :git => "https://github.com/gs01md/ColorfulWoodUIBase.git", :tag => "#{s.version}" }

  s.source_files = "ColorfulWoodUIBase/ColorfulWoodUIBase/**/*"

  s.platform     = :ios, "8.2"

  s.frameworks   = 'UIKit'

  s.dependency    'Masonry'
  s.dependency    'ColorfulWoodCategories'

end
