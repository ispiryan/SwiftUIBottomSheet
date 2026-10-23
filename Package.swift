// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let package = Package(
  name: "SwiftUIBottomSheet",
  platforms: [
    .iOS("14.0"),
  ],
  products: [
    // Products define the executables and libraries a package produces, and
    // make them visible to other packages.
    .library(
      name: "SwiftUIBottomSheet",
      targets: ["SwiftUIBottomSheet"]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // Introspect's major version follows the OS, e.g. 26.x adds iOS 26, so
    // the range spans two majors to fit apps on either. 27.0.0 is the first
    // with `.v27`.
    .package(
      url: "https://github.com/siteline/SwiftUI-Introspect",
      "27.0.0" ..< "29.0.0"
    ),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a
    // module or a test suite.
    // Targets can depend on other targets in this package, and on products in
    // packages this package depends on.
    .target(
      name: "SwiftUIBottomSheet",
      dependencies: ["SwiftUIIntrospect"],
      path: "SwiftUIBottomSheet/Classes"
    ),
  ]
)
