// swift-tools-version: 5.7
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
    dependencies: [
        .package(path: "../DesignSystem")
    ],
    targets: [
        .target(
            name: "Resource",
            dependencies: [
                "DesignSystem"
            ]
        ),
        .testTarget(
            name: "ResourceTests",
            dependencies: [
                "Resource"
            ]
        )
    ]
)
