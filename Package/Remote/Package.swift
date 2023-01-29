// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Remote",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Remote",
            targets: ["Remote"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/wlsdms0122/RVB.git", exact: "1.0.1"),
        .package(url: "https://github.com/wlsdms0122/Route.git", exact: "1.1.0")
    ],
    targets: [
        .target(
            name: "Remote",
            dependencies: [
                "RVB",
                "Route"
            ]
        )
    ]
)
