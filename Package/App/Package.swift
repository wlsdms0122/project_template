// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "App",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "App",
            targets: ["App"]
        )
    ],
    dependencies: [
        .package(path: "../Feature/Root")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [
                "Root"
            ]
        )
    ]
)
