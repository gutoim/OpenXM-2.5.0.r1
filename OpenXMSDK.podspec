#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
    spec.name         = 'woow_ui'
    spec.version      = '1.3.0'
    spec.summary      = 'Woow UI'
    spec.homepage     = 'https://github.com/woowinc/woow-iphone-ui'
    spec.author       = { 'YouWowMe' => 'iosdev@woowteam.com' }
    spec.source       = { :git => 'https://github.com/woowinc/woow-iphone-ui.git', :tag => spec.version }
    spec.description  = 'Woow UI.'

    spec.ios.deployment_target  = '7.0'
    spec.requires_arc           = true
    spec.default_subspec        = 'All'

    spec.subspec 'All' do |ss|
        ss.framework              = 'CoreLocation', 'MapKit'
        ss.compiler_flags         = '-DOS_OBJECT_USE_OBJC=1' #http://guides.cocoapods.org/syntax/podspec.html#deployment_target
        ss.prefix_header_contents = '#import "PchImports.h"'
        ss.source_files           = 'Components/**/*.{h,m,mm}'
        ss.resources              = 'Components/**/*.{xcassets,xib,lproj}'
    end

    spec.subspec 'Utils' do |ss|
        ss.source_files = [
            'Components/Common/UITextField+TrailingCaret/*.{h,m}',
            'Components/Common/UIView+Nib.{h,m}',
            'Components/Common/UIView+Helpers.{h,m}'
        ]
    end

    spec.subspec 'SupplementaryViewController' do |ss|
        ss.source_files = 'Components/Common/SupplementaryViewsController/**/*.{h,m}'
        ss.resources    = 'Components/Common/SupplementaryViewsController/**/*.{xcassets,xib}'

        ss.dependency 'woow_ui/Utils'
    end

    spec.subspec 'DialpadView' do |ss|
        ss.source_files = 'Components/CustomViews/DialpadView/**/*.{h,m}'
        ss.resources    = 'Components/CustomViews/DialpadView/**/*.{xcassets,xib}'
    end
    
    spec.subspec 'PhoneLabelView' do |ss|
        ss.source_files = 'Components/CustomViews/PhoneLabel/**/*.{h,m}'
        ss.resources    = 'Components/CustomViews/PhoneLabel/**/*.{xcassets,xib}'
    end
    

end
