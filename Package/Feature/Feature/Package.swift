// swift-tools-version: 5.8
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
        .package(url: "https://github.com/wlsdms0122/Logma.git", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/wlsdms0122/RVB.git", .upToNextMajor(from: "1.1.0")),
        .package(url: "https://github.com/wlsdms0122/Reducer.git", .upToNextMajor(from: "1.3.1")),
        .package(url: "https://github.com/wlsdms0122/Compose.git", .upToNextMajor(from: "1.5.0")),
        .package(url: "https://github.com/wlsdms0122/Route.git", .upToNextMajor(from: "1.3.0")),
        .package(url: "https://github.com/wlsdms0122/Deeplinker.git", .upToNextMajor(from: "1.1.1")),
        .package(path: "../../Core/Util"),
        .package(path: "../../Module/UI/DesignSystem"),
        .package(path: "../../Module/Environment")
    ],
    targets: [
        .target(
            name: "Feature",
            dependencies: [
                "Logma",
                "RVB",
                "Reducer",
                "Compose",
                "Route",
                "Deeplinker",
                "Util",
                "DesignSystem",
                "Environment"
            ]
        )
    ]
)
