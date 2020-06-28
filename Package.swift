// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "hex",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13)
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
    ]
)
