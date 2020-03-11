// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "ReactorKit",
  platforms: [
    .macOS(.v10_11), .iOS(.v8), .tvOS(.v9), .watchOS(.v3)
  ],
  products: [
    .library(name: "ReactorKit", targets: ["ReactorKit"]),
  ],
  dependencies: [
    .package(url: "https://github.ncsoft.com/MediaTalkClientTeam/RxSwift.git", .revision("39a1766452d4b78ebb52caa327f29ebc918d23fd")),
    .package(url: "https://github.ncsoft.com/MediaTalkClientTeam/RxExpect.git", .revision("0eb03749dae9666da41aae4df8efdced7406c53e"))
  ],
  targets: [
    .target(name: "ReactorKit", dependencies: ["ReactorKitRuntime", "RxSwift"]),
    .target(name: "ReactorKitRuntime", dependencies: []),
    .testTarget(name: "ReactorKitTests", dependencies: ["ReactorKit", "RxExpect"]),
  ],
  swiftLanguageVersions: [.v5]
)
