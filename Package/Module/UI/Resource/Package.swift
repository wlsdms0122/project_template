// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Resource",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Resource",
            targets: ["Resource"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Resource",
            dependencies: []
        ),
        .testTarget(
            name: "ResourceTests",
            dependencies: [
                "Resource"
            ]
        )
    ]
)
