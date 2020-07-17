// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppCommon",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "AppCommon",
            targets: ["AppCommon"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
		.package(name: "IGListKit", url: "https://github.com/Instagram/IGListKit", from: "4.0.0"),
		.package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "14.0.0")),
		.package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0"),
		.package(url: "https://github.com/Swinject/Swinject", from: "2.7.1"),
		.package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver", from: "1.9.1"),
		.package(url: "https://github.com/nathantannar4/InputBarAccessoryView", from: "4.3.2"),
		.package(url: "https://github.com/thii/FontAwesome.swift", from: "1.9.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "AppCommon",
            dependencies: ["IGListKit", "RxSwift", "RxCocoa", "Swinject", "InputBarAccessoryView", "Moya", "SwiftyBeaver", "FontAwesome.swift"]),
        .testTarget(
            name: "AppCommonTests",
            dependencies: ["AppCommon", "RxSwift", "RxCocoa"]),
    ]
)
