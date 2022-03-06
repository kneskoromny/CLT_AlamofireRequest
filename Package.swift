// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hello",
    platforms: [
        .macOS(.v10_12)
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-tools-support-core.git",
                 from: "0.0.1"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.5.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Hello",
            dependencies: ["Alamofire", "SwiftToolsSupport"]),
        .testTarget(
            name: "HelloTests",
            dependencies: ["Hello"]),
    ]
)

//import PackageDescription
//
//let package = Package(
//    name: "Test",
//    platforms: [
//        .macOS(.v10_12),
//        .iOS(.v10),
//        .tvOS(.v10),
//        .watchOS(.v3)
//    ],
//    products: [
//        .library(
//            name: "Test",
//            targets: ["Test"]),
//    ],
//    dependencies: [
//        .package(url: "https://github.com/Moya/Moya.git", .exact("14.0.0-beta.1")),
//    ],
//    targets: [
//        .target(
//            name: "Test",
//            dependencies: ["Moya"]),
//        .testTarget(
//            name: "TestTests",
//            dependencies: ["Test"]),
//    ]
//)
