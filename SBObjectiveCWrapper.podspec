Pod::Spec.new do |s|
    s.name         = "SBObjectiveCWrapper"
    s.version      = "0.1.2"
    s.summary      = "Objective-C wrapper and macros around SwiftyBeaver logging framework"

    s.description  = <<-DESC
        SBObjectiveCWrapper brings SwiftyBeaver logging support to your Objective-C files. After setting up SwiftyBeaver in Swift, you can use a familiar C macro syntax in your Objective-C code to reuse the same logging destinations and filter settings.
    DESC

    s.homepage     = "https://github.com/SwiftyBeaver/SBObjectiveCWrapper"
    s.license      = "MIT"
    s.author       = { "Reese McLean" => "reese.mclean@me.com" }
    s.ios.deployment_target = "8.0"
    s.watchos.deployment_target = "2.0"
    s.tvos.deployment_target = "9.0"
    s.osx.deployment_target = "10.9"
    s.source       = { :git => "https://github.com/SwiftyBeaver/SBObjectiveCWrapper.git", :tag => "v" + s.version.to_s }
    s.source_files  = "sources"
    s.dependency 'SwiftyBeaver', '~> 0.3.5'
end
