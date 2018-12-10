

Pod::Spec.new do |s|

s.name         = "ColorfulWoodUIBase"
s.version      = "1.2.49"
s.summary      = "User Interface Design."

s.homepage     = "https://github.com/gs01md"

s.license      = "MIT"

s.author       = { "ColorfulWood" => "103377808@qq.com" }

s.source       = { :git => "https://github.com/gs01md/ColorfulWoodUIBase.git", :tag => "#{s.version}" }

s.source_files = "ColorfulWoodUIBase/ColorfulWoodUIBase/CocoapodFiles/**/*"

#图片等资源文件
s.resources    = "ColorfulWoodUIBase/ColorfulWoodUIBase/CocoapodFiles/CWUBBundle/CWUBBundle.bundle"

s.platform     = :ios, "9.0"

s.frameworks   = 'UIKit'

s.dependency     'Masonry'
s.dependency     'ColorfulWoodCategories'
s.dependency     'SDWebImage'
s.dependency     'MJRefresh'
s.dependency     'JSONModel'
s.dependency     'ColorfulWoodNavigationBar'
s.dependency     'ColorfulWoodPoint'
s.dependency     'ColorfulWoodTools'

end
