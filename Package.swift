// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TangemWalletCoreBinaries",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "TangemWalletCoreBinaries",
            targets: ["TangemWalletCoreBinaries"]
        ),
        .library(
            name: "SwiftProtobuf",
            targets: ["SwiftProtobufBinaries"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TangemWalletCoreBinaries",
            path: "WalletCore.xcframework"
        ),
        .binaryTarget(
            name: "SwiftProtobufBinaries",
            path: "SwiftProtobuf.xcframework"
        ),
    ]
)
