require 'erb'

File.open('project.yml', 'w') do |file|
  project_name = ARGV[0]
  file.puts ERB.new(DATA.read).result(binding)
end

__END__
name: <%= project_name %>
fileGroups:
  - xcconfigs
configFiles:
  Debug: xcconfigs/Debug.xcconfig
  Release: xcconfigs/Release.xcconfig
options:
  # bundleIdPrefix: FIXME
targets:
  <%= project_name %>:
    type: application
    platform: iOS
    deploymentTarget: "11.0"
    sources: <%= project_name %>
    configFiles:
      Debug: xcconfigs/<%= project_name %>-Debug.xcconfig
      Release: xcconfigs/<%= project_name %>-Release.xcconfig
    scheme:
      testTargets:
        - <%= project_name %>Tests
    dependencies:
      - carthage: SwifterSwift
      - carthage: SwiftDate
      # - carthage: RxSwift
      # - carthage: RxCocoa
      # - carthage: RxAtomic
      # - carthage: ReSwift
      # - carthage: Alamofire
      # - carthage: Result
      # - carthage: Moya
      # - carthage: RxMoya
      # - carthage: Realm
      # - carthage: RealmSwift
      # - carthage: SnapKit
  <%= project_name %>Tests:
    type: bundle.unit-test
    platform: iOS
    sources: <%= project_name %>Tests
    configFiles:
      Debug: xcconfigs/<%= project_name %>Tests-Debug.xcconfig
      Release: xcconfigs/<%= project_name %>Tests-Release.xcconfig
    dependencies:
      - target: <%= project_name %>
      # - carthage: RxTest
      # - carthage: RxBlocking

