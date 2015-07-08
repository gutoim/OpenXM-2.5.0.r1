#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|

	spec.name         = ‘OpenXMSDK’
    	spec.libraries    = ‘OpenXMSDK’
    	#platforms
	spec.version      = ‘2.5.0.r1’
	spec.summary      = 'OpenX Mobile SDK for iOS v2.5.0.r1'
	spec.description  = ‘OpenXM.’
    	spec.homepage     = 'http://www.openx.com'
    	spec.authors      = ‘OpenX Technologies, Inc. | maintained by @lawrenceleach’
	#documentation_url    
	#license	

	spec.source       		= { :git => 'https://github.com/gutoim/OpenXM-2.5.0.r1.git' }
        spec.source_files           	= 'OpenX_Mobile_SDK_iOS/SDK/Headers/*.h'
	spec.public_header_files	= ‘OpenX_Mobile_SDK_iOS/SDK/Headers/*.h’
	spec.preserve_paths	    	= ‘OpenX_Mobile_SDK_iOS/SDK/libOpenXMSDK.a’
	spec.ios.vendored_libraries 	= ‘OpenX_Mobile_SDK_iOS/SDK/libOpenXMSDK.a’
        spec.resources              	= 'OpenX_Mobile_SDK_iOS/SDK/OpenXMSDKResources.bundle'

	spec.requires_arc  	= false
        spec.framework          = ‘SystemConfiguration’, ‘AdSupport’, ‘CoreGraphics’, ’CoreLocation', ‘CoreTelephony’, ‘EventKit’, ‘EventKitUI’, ’MapKit’, ‘MediaPlayer’

#	spec.compiler_flags     = '-DOS_OBJECT_USE_OBJC=1' #http://guides.cocoapods.org/syntax/podspec.html#deployment_target
#    	spec.ios.deployment_target  = '7.0'
#	spec.default_subspec        = 'All'

	spec.xcconfig = {
			:FRAMEWORK_SEARCH_PATHS => ‘\”$(PODS_ROOT)/OpenXMSDK\”’,
	   	 	:LIBRARY_SEARCH_PATHS => ‘$(PODS_ROOT)/OpenXMSDK’,
    			:OTHER_LDFLAGS => "-lObjC"
			}
end
