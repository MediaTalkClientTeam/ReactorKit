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
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .revision("06e004a45db47fce1a75894895e12f3adef99cbd")),
    .package(url: "https://github.com/ReactorKit/WeakMapTable.git", .upToNextMajor(from: "1.1.0")),
    .package(url: "https://github.ncsoft.com/MediaTalkClientTeam/RxExpect.git", .revision("0cdfe18a5f97a7a259c3d6e32e4f0eeac330b7f2"))
  ],
  targets: [
    .target(name: "ReactorKit", dependencies: ["ReactorKitRuntime", "RxSwift", "WeakMapTable"]),
    .target(name: "ReactorKitRuntime", dependencies: []),
    .testTarget(name: "ReactorKitTests", dependencies: ["ReactorKit", "RxExpect"]),
  ],
  swiftLanguageVersions: [.v5]
)
