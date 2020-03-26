
Pod::Spec.new do |s|
  s.name             = 'NNLabel'
  s.version          = '1.0.1'
  s.summary          = 'NSView Subclass'
  s.description      = 'macOS NSView custom，like UILabel.'

  s.homepage         = 'https://github.com/shang1219178163/NNLabel'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shang1219178163' => 'shang1219178163@gmail.com' }
  s.source           = { :git => 'https://github.com/shang1219178163/NNLabel.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :osx
  s.osx.deployment_target = "10.12"

  s.source_files = 'NNLabel/Classes/**/*'

  # s.resource_bundles = {
  #   'NNLabel' => ['NNLabel/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Cocoa'
  # s.dependency 'AFNetworking', '~> 2.3'
end
