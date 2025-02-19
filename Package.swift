// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Data Manager for MeDeX",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "Data Manager for MeDeX",
            targets: ["Data Manager for MeDeX"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "Data Manager for MeDeX",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "Data Manager for MeDeXTests",
            dependencies: ["Data Manager for MeDeX"]),
    ]
)
