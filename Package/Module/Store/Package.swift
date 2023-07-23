// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Store",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Store",
            targets: ["Store"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/wlsdms0122/Logma.git", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/wlsdms0122/Storage.git", .upToNextMajor(from: "1.0.2")),
        .package(path: "../Environment")
    ],
    targets: [
        .target(
            name: "Store",
            dependencies: [
                "Logma",
                "Storage",
                "Environment"
            ]
        ),
        .testTarget(
            name: "StoreTests",
            dependencies: [
                "Store"
            ]
        )
    ]
)
