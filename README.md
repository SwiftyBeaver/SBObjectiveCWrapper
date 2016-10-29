# SBObjectiveCWrapper

![Platform iOS 8+](https://img.shields.io/badge/Platform-iOS%208%2B-blue.svg)
![Platform Mac OS X 10.9+](https://img.shields.io/badge/Platform-Mac%20OS%20X%2010.9%2B-blue.svg)
![Platform](https://img.shields.io/badge/Platform-tvOS%209%2B-blue.svg)
![Platform](https://img.shields.io/badge/Platform-watchOS%202%2B-blue.svg)
<br/>
[![Language Swift 2.3](https://img.shields.io/badge/Language-Swift%202-orange.svg)](https://developer.apple.com/swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-brightgreen.svg)](https://github.com/Carthage/Carthage)
[![Cocoapods compatible](https://img.shields.io/cocoapods/v/SBObjectiveCWrapper.svg)]("https://cocoapods.org)

SBObjectiveCWrapper enables you to use [SwiftyBeaver](https://github.com/SwiftyBeaver/SwiftyBeaver) logging in your Objective-C code.

## Requirements

- iOS 9.0+ / Mac OS X 10.9+
- Xcode 8

## Installation

#### Platform & Installation Support

\ | iOS 9+ | OSX 10.9+ | watchOS 2+ | tvOS 9+
------------- | ------------- | ------------- | ------------- | -------------
[Carthage](https://github.com/Carthage/Carthage) | <center>✅</center> | <center>✅</center> | <center>✅</center> | <center>✅</center>
[CocoaPods](https://cocoapods.org) | <center>✅</center> | <center>✅</center> | <center>✅</center> | <center>✅</center>
Download | <center>✅</center> | <center>✅</center> | <center>✅</center> | <center>✅</center>

For installation details please see the next points.

### via Carthage

You can use [Carthage](https://github.com/Carthage/Carthage) to install SBObjectiveCWrapper by adding this to your Cartfile:

#### Swift 3.0
```
github "SwiftyBeaver/SBObjectiveCWrapper"
```

#### Swift 2.3

```
github "SwiftyBeaver/SwiftyBeaver" ~> 0.7
```

This will also install SwiftyBeaver if it is not installed already.

### via CocoaPods

To use [CocoaPods](https://cocoapods.org) just add this to your Podfile:

#### Swift 3.0

```
pod 'SBObjectiveCWrapper', '~> 1.1.0'
```

#### Swift 2.3

```
pod 'SBObjectiveCWrapper', '~> 0.7.0'
```

This will also install SwiftyBeaver if it is not installed already.

### or Download

Prerequisite: Make sure you have SwiftyBeaver installed! Follow the installation directions here: [SwiftyBeaver](https://github.com/SwiftyBeaver/SwiftyBeaver)

1. Download the latest source code.
2. Drag & drop the `/sources` folder into your project (make sure "Copy items if needed" is checked)
3. Rename the "sources" group to "SBObjectiveCWrapper" if you'd like

## Usage

### Let's go!

In order to use the SwiftyBeaver Objective-C Wrapper you must get your logging environment setup using Swift.

*If you already have SwiftyBeaver working with Swift you can skip ahead to the _Objective-C_ section.*

###SwiftyBeaver Setup

A more detailed example of setting up SwiftyBeaver can be seen in the SwiftyBeaver readme. Below are the minimum steps you need to do in your AppDelegate.swift file to get logging working:

Near the top:

```Swift
import SwiftyBeaver
let log = SwiftyBeaver.self
```

This makes the log variable accessible to any of your Swift files.

We then need to add a destination. This should happen as early as possible (most likely in your appDelegate:didFinishLaunchingWithOptions() method). Here we add a console destination:

```Swift
let console = ConsoleDestination()  // log to Xcode Console
log.addDestination(console)
```

### Objective-C

Once you can log from Swift now you can import SBObjectiveCWrapper into any of your Objective-C .m files:

`@import SBObjectiveCWrapper;`

This allows you to use the following logging macros:

```
SBLogVerbose(@"This is a verbose message.");
SBLogDebug(@"This is a debug message.");
SBLogInfo(@"This is an info message.");
SBLogWarning(@"This is a warning message.");
SBLogError(@"This is an error message.");
```

## Contact & Contribute
If you have questions please contact us via the dedicated [SwiftyBeaver Twitter account](https://twitter.com/SwiftyBeaver). Feature requests or bugs are better reported and discussed as Github Issue.

## License
SBObjectiveCWrapper is released under the [MIT License](https://github.com/SwiftyBeaver/SwiftyBeaver/blob/master/LICENSE).
