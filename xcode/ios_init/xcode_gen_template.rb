require 'erb'
require 'optparse'

opt = OptionParser.new
opt.on('--carthage')
opt.on('--uitest')
opt.on('--swift4_2')

options = {}
opt.parse!(ARGV, into: options)

File.open('project.yml', 'w') do |file|
  project_name = ARGV[0]
  file.puts ERB.new(DATA.read, nil, '-').result(binding)
end

__END__
name: <%= project_name %>
fileGroups:
  - xcconfigs
configFiles:
  Debug: xcconfigs/Debug.xcconfig
  Release: xcconfigs/Release.xcconfig
options:
  postGenCommand: bundle exec pod install
  # bundleIdPrefix: FIXME
settings:
  base:
    IPHONEOS_DEPLOYMENT_TARGET: 13.4
targets:
  <%= project_name %>:
    type: application
    platform: iOS
    sources: <%= project_name %>
    configFiles:
      Debug: xcconfigs/<%= project_name %>-Debug.xcconfig
      Release: xcconfigs/<%= project_name %>-Release.xcconfig
    scheme:
      testTargets:
        - <%= project_name %>Tests
    settings:
      base:
        ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES: $(inherited)
      configs:
        Debug:
          OTHER_SWIFT_FLAGS: "$(inherited) -D DEBUG"
    <%- if options[:carthage] -%>
    dependencies:
      - carthage: SwifterSwift
      - carthage: SwiftDate
    <%- else -%>
    # dependencies:
      # - carthage: SwifterSwift
      # - carthage: SwiftDate
    <%- end -%>
      # - carthage: RxSwift
      # - carthage: RxCocoa
      # - carthage: RxRelay
      # - carthage: ReSwift
      # - carthage: Alamofire
      # - carthage: Moya
      # - carthage: RxMoya
      # - carthage: Realm
      # - carthage: RealmSwift
      # - carthage: SnapKit
    preBuildScripts:
      - name: "[XcodeGen-User] R.swift"
        script: ${PODS_ROOT}/R.swift/rswift generate ${SRCROOT}/<%= project_name %>/R.generated.swift
        inputFiles:
          - $(TEMP_DIR)/rswift-lastrun
        outputFiles:
          - $(SRCROOT)/<%= project_name %>/R.generated.swift
    postCompileScripts:
      - name: "[XcodeGen-User] SwiftLint"
        script: ${PODS_ROOT}/SwiftLint/swiftlint
  <%= project_name %>Tests:
    type: bundle.unit-test
    platform: iOS
    sources: <%= project_name %>Tests
    configFiles:
      Debug: xcconfigs/<%= project_name %>Tests-Debug.xcconfig
      Release: xcconfigs/<%= project_name %>Tests-Release.xcconfig
    settings:
      ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES: $(inherited)
    dependencies:
      - target: <%= project_name %>
      # - carthage: RxTest
      # - carthage: RxBlocking

