Pod::Spec.new do |s|
  s.name     = 'Masonry-fyFork'
  s.version  = '0.0.2'
  s.license  = 'MIT'
  s.summary  = 'Harness the power of Auto Layout NSLayoutConstraints with a simplified, chainable and expressive syntax.'
  s.homepage = 'https://github.com/cloudkite/Masonry'
  s.author   = { 'feiyu002' => 'pang_fengyue@126.com' }
  # s.social_media_url = "http://twitter.com/cloudkite"

  s.source   = { :git => 'https://github.com/feiyu002/Masonry-fyFork.git', :tag => "v#{s.version}" }

  s.description = %{
    Masonry is a light-weight layout framework which wraps AutoLayout with a nicer syntax.
	Masonry has its own layout DSL which provides a chainable way of describing your
	NSLayoutConstraints which results in layout code which is more concise and readable.
    Masonry supports iOS and Mac OSX.
  }

  pch_AF = <<-EOS
    #ifndef TARGET_OS_IOS
        #define TARGET_OS_IOS TARGET_OS_IPHONE
    #endif
    #ifndef TARGET_OS_TV
        #define TARGET_OS_TV 0
    #endif
  EOS

  s.source_files = 'Masonry/*.{h,m}'
  s.resource_bundles = {'Masonry-fyFork' => ['Masonry/Resources/PrivacyInfo.xcprivacy']}
  s.ios.frameworks = 'Foundation', 'UIKit'

  s.ios.deployment_target = '11.0' # minimum SDK with autolayout
  s.requires_arc = true
end
