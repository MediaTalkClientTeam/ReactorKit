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
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .revision("61e9cff0613854430cbd252f66883b1f4fb0892d")),
    .package(url: "https://github.com/ReactorKit/WeakMapTable.git", .revision("9580560169b4b48ba2affe7badba6a7f360495f4")),
    .package(url: "https://github.com/MediaTalkClientTeam/RxExpect.git", .revision("874493562355122ff7831c5ee3981696aa4751a0"))
  ],
  targets: [
    .target(name: "ReactorKit", dependencies: ["ReactorKitRuntime", "RxSwift", "RxCocoa", "RxRelay", "WeakMapTable"]),
    .target(name: "ReactorKitRuntime", dependencies: []),
    .testTarget(name: "ReactorKitTests", dependencies: ["ReactorKit", "RxExpect"]),
  ],
  swiftLanguageVersions: [.v5]
)
