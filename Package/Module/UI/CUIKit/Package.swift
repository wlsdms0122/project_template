// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CUIKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "CUIKit",
            targets: ["CUIKit"]
        )
    ],
    dependencies: [
        .package(path: "../Resource")
    ],
    targets: [
        .target(
            name: "CUIKit",
            dependencies: [
                "Resource"
            ]
        )
    ]
)
