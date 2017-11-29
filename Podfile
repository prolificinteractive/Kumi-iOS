use_frameworks!
podspec :path => 'Kumi.podspec'

def shared_pods
	pod 'Kumi', :path => './'
	pod 'SwiftLint'
	pod 'SwiftyJSON'
end

target 'Kumi' do
	shared_pods
end

target 'KumiTests' do
	shared_pods
end
