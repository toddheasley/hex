// swift-tools-version:5.5

import PackageDescription

let package = Package(name: "hex",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .watchOS(.v7),
        .tvOS(.v14)
    ],
    products: [
        .library(name: "Hex", targets: [
            "Hex"
        ]),
    ],
    targets: [
        .target(name: "Hex", dependencies: []),
        .testTarget(name: "HexTests", dependencies: [
            "Hex"
        ]),
    ])
