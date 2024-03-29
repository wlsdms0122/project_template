// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Main",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Main",
            targets: ["Main"]
        )
    ],
    dependencies: [
        .package(path: "../Feature")
    ],
    targets: [
        .target(
            name: "Main",
            dependencies: [
                "Feature"
            ]
        )
    ]
)
