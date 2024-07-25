// swift-tools-version:5.10

import PackageDescription

let package = Package(
  name: "RxSwiftExt",
  platforms: [
    .iOS(.v12), .tvOS(.v12), .macOS(.v10_13), .watchOS(.v4)
  ],
  products: [
    .library(name: "RxSwiftExt", targets: ["RxSwiftExt"]),
  ],
  dependencies: [
    .package(url: "https://github.com/FountainheadMobileSolutions/RxSwift.git", branch: "topic/xcode16"),
  ],
  targets: [
    .target(name: "RxSwiftExt", dependencies: ["RxSwift", "RxCocoa"], path: "Source"),
    .testTarget(name: "RxSwiftExtTests", dependencies: ["RxSwiftExt", "RxTest"], path: "Tests"),
  ],
  swiftLanguageVersions: [.v5]
)
