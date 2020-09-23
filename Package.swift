// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "ReactorKit",
  platforms: [
    .macOS(.v10_11), .iOS(.v9), .tvOS(.v9), .watchOS(.v3)
  ],
  products: [
    .library(name: "ReactorKit", targets: ["ReactorKit"]),
  ],
  dependencies: [
    .package(url: "https://github.ncsoft.com/MediaTalkClientTeam/RxSwift.git", .revision("7b410ba9fad7d7201e0a94e692a405c10e976314")),
    .package(url: "https://github.com/ReactorKit/WeakMapTable.git", .upToNextMajor(from: "1.1.0")),
    .package(url: "https://github.ncsoft.com/MediaTalkClientTeam/RxExpect.git", .revision("8f5a17b1ace333338ee5149926f5e8d29c8a1feb"))
  ],
  targets: [
    .target(name: "ReactorKit", dependencies: ["ReactorKitRuntime", "RxSwift", "WeakMapTable"]),
    .target(name: "ReactorKitRuntime", dependencies: []),
    .testTarget(name: "ReactorKitTests", dependencies: ["ReactorKit", "RxExpect"]),
  ],
  swiftLanguageVersions: [.v5]
)
