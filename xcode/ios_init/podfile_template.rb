require 'erb'
require 'optparse'

opt = OptionParser.new
opt.on('--carthage')
opt.on('--uitest')
opt.on('--swift4_2')

options = {}
opt.parse!(ARGV, into: options)

File.open('Podfile', 'w') do |file|
  project_name = ARGV[0]
  file.puts ERB.new(DATA.read, nil, '-').result(binding)
end

__END__
# Uncomment the next line to define a global platform for your project
platform :ios, '13.4'

# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!

# ignore all warnings from all pods
inhibit_all_warnings!

target '<%= project_name %>' do
  # Pods for <%= project_name %>
  pod 'Then'
  pod 'R.swift'
  # pod 'Firebase/Analytics'
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

  # script_phase name: 'Crashlytics', script: '"${PODS_ROOT}/Fabric/run"'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      <%- if options[:swift4_2] -%>
      config.build_settings['SWIFT_VERSION'] = '4.2'
      config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'YES'
      <%- end -%>
    end
  end
end

