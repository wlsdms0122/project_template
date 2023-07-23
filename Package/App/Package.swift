// swift-tools-version: 5.8
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
        .package(url: "https://github.com/wlsdms0122/Logma.git", .upToNextMajor(from: "1.2.0")),
        .package(path: "../Module/Environment"),
        .package(path: "../Feature/Root")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [
                "Logma",
                "Environment",
                "Root"
            ]
        )
    ]
)
