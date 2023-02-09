
Pod::Spec.new do |spec|
  spec.name         = "ModularCommon"
  spec.version      = "0.0.1"
  spec.summary      = "公共模块"
  spec.description  = "模块化-公共模块"
  spec.homepage     = "https://github.com/2NU71AN9/SLModularisation-ModuleHome"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { "sfh" => "sfh894645252@163.com" }
  spec.ios.deployment_target = "11.0"
  spec.source       = { :git => "https://github.com/Sfh03031/SFHModular-Common.git" }
  spec.source_files  = ['ModularCommon/Classes/**/*']
  spec.resource_bundles = {
    'ModularCommon' => ['ModularCommon/Classes/**/*.{storyboard,xib}']
  }

  spec.dependency 'IQKeyboardManagerSwift'
  spec.dependency 'SVProgressHUD'
  spec.dependency 'SwiftDate'
  spec.dependency 'Kingfisher'
  spec.dependency 'SwiftyJSON'
  spec.dependency 'R.swift'
  spec.dependency 'YYCache'
  spec.dependency 'JXSegmentedView'
  spec.dependency 'JXPagingView'
  spec.dependency 'FSPagerView'
  spec.dependency 'TagListView'
  spec.dependency 'HXPhotoPicker'
  spec.dependency 'Moya'
  spec.dependency 'Starscream'
  spec.dependency 'SLEmptyPage'
  spec.dependency 'FSTextView'
  spec.dependency 'SwiftLint'
  spec.dependency 'CTMediator'
  spec.dependency 'PopMenu'
  spec.dependency 'Aspects'
  
  spec.dependency 'UMCommon'
  spec.dependency 'UMPush'
  spec.dependency 'UMShare/UI'
  spec.dependency 'UMShare/Social/WeChat'
  
  spec.dependency 'Bugly'

  spec.dependency 'ModuleResource'
  
  spec.pod_target_xcconfig = {
      'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
  }
  spec.static_framework  =  true


end
