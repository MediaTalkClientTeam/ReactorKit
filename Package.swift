// swift-tools-version:5.3

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
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .revision("7c17a6ccca06b5c107cfa4284e634562ddaf5951")),
    .package(url: "https://github.com/ReactorKit/WeakMapTable.git", .upToNextMajor(from: "1.1.0"))
  ],
  targets: [
    .target(
      name: "ReactorKit",
      dependencies: [
        "ReactorKitRuntime",
        "RxSwift",
        "WeakMapTable"
      ]
    ),
    .target(
      name: "ReactorKitRuntime",
      dependencies: []
    ),
    .testTarget(
      name: "ReactorKitTests",
      dependencies: [
        "ReactorKit",
        .product(name: "RxTest", package: "RxSwift")
      ]
    ),
  ],
  swiftLanguageVersions: [.v5]
)
