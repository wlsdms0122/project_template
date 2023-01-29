// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Module",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Module",
            targets: ["Module"]
        )
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "Module",
            dependencies: [
                
            ]
        )
    ]
)
