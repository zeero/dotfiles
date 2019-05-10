require 'erb'

File.open('Podfile', 'w') do |file|
  project_name = ARGV[0]
  file.puts ERB.new(DATA.read).result(binding)
end

__END__
# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!

target '<%= project_name %>' do
  # Pods for <%= project_name %>
  pod 'Then'
  # pod 'RxViewController'
  # pod 'R.swift'
  # pod 'Firebase/Core'
  # pod 'Fabric'
  # pod 'Crashlytics'
  pod 'SwiftLint'
  # pod 'LicensePlist'

  target '<%= project_name %>Tests' do
    inherit! :search_paths
    # Pods for testing
    pod 'Quick'
    pod 'Nimble'
  end
end

