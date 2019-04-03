// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "SBObjectiveCWrapper",
    // platforms: [.iOS("9.0"), .macOS("10.11"), tvOS("9.0"), .watchOS("2.0")],
    products: [
        .library(name: "SBObjectiveCWrapper", targets: ["SBObjectiveCWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", .upToNextMajor(from: "1.6.1")),
    ],
    targets: [
        .target(
            name: "SBObjectiveCWrapper",
            dependencies: ["SwiftyBeaver"],
            path: "Sources"
        )
    ]
)
