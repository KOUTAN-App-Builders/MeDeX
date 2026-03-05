// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MeDeXDataManager",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "MeDeXDataManager",
            targets: ["MeDeXDataManager"])
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "MeDeXDataManager"
        ),
        .testTarget(
            name: "MeDeXDataManagerTests", 
            dependencies: ["MeDeXDataManager"]
        )
    ]
)
