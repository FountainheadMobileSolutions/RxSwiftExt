// swift-tools-version:5.10

import PackageDescription

let package = Package(
  name: "RxSwiftExt",
  platforms: [
    .iOS(.v12), .tvOS(.v12), .macOS(.v12), .watchOS(.v4)
  ],
  products: [
    .library(name: "RxSwiftExt", targets: ["RxSwiftExt"]),
  ],
  dependencies: [
    .package(url: "https://github.com/FountainheadMobileSolutions/RxSwift.git", .upToNextMajor(from: "6.8.0")),
  ],
  targets: [
    .target(
      name: "RxSwiftExt", 
      dependencies: [
        .product(name: "RxSwift", package: "RxSwift"),
        .product(name: "RxCocoa",package: "RxSwift"),
      ], 
      path: "Source"
    ),
    .testTarget(
      name: "RxSwiftExtTests", 
      dependencies: [
        .target(name: "RxSwiftExt"), 
        .product(name: "RxTest",package: "RxSwift"),
      ], 
      path: "Tests"
    ),
  ],
  swiftLanguageVersions: [.v5]
)
