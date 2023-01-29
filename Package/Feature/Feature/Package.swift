// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Feature",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Feature",
            targets: ["Feature"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/wlsdms0122/RVB.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/wlsdms0122/Route.git", .upToNextMajor(from: "1.0.0")),
        .package(path: "../../Module/UI/Resource")
    ],
    targets: [
        .target(
            name: "Feature",
            dependencies: [
                "RVB",
                "Route",
                "Resource"
            ]
        )
    ]
)
