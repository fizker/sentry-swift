Pod::Spec.new do |s|
  s.name         = "SentrySwift"
  s.version      = "0.2.2"
  s.summary      = "Swift client for Sentry"
  s.homepage     = "https://github.com/getsentry/sentry-swift"
  s.license      = "mit"
  s.authors      = "Josh Holtz"
  s.source       = { :git => "https://github.com/getsentry/sentry-swift.git", :tag => s.version.to_s }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.tvos.deployment_target = "9.0"

  s.source_files = "Sources/**/*.{h,m,swift}"
  s.osx.exclude_files = "Sources/**/KSCrashhandler.swift"

  s.ios.dependency 'KSCrash', '~> 1.5'
  s.tvos.dependency 'KSCrash', '~> 1.5'

end
