// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "API",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "API",
            targets: ["API"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/wlsdms0122/Logma.git", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/wlsdms0122/Dyson.git", .upToNextMajor(from: "2.0.0")),
        .package(path: "../Environment")
    ],
    targets: [
        .target(
            name: "API",
            dependencies: [
                "Logma",
                "Dyson",
                "Environment"
            ]
        ),
        .testTarget(
            name: "APITests",
            dependencies: [
                "API"
            ]
        )
    ]
)
