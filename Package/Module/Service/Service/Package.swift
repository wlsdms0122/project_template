// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Service",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Service",
            targets: ["Service"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/wlsdms0122/Logma.git", .upToNextMajor(from: "1.2.2")),
        .package(path: "../../../Core/Util"),
        .package(path: "../../API"),
        .package(path: "../../Store"),
        .package(path: "../../Environment")
    ],
    targets: [
        .target(
            name: "Service",
            dependencies: [
                "Logma",
                "Util",
                "API",
                "Store",
                "Environment"
            ]
        )
    ]
)
