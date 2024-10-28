// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TangemWalletCoreBinaries",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        // A dummy product for linking dependencies to the binary target (SPM doesn't allow this out of the box)
        // This product is an implementation detail, don't import or use it
        // Just import the `WalletCore` module as usual and you're good to go
        .library(
            name: "TangemWalletCoreBinariesWrapper",
            targets: ["TangemWalletCoreBinariesWrapper"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/tangem/swift-protobuf-binaries.git",
            .upToNextMajor(from: "1.25.2-tangem1")
        ),
    ],
    targets: [
        .target(
            name: "TangemWalletCoreBinariesWrapper",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf-binaries"),
                .byName(name: "WalletCoreBinaries"),
            ],
            path: "WalletCore"
        ),
        .binaryTarget(
            name: "WalletCoreBinaries",
            path: "WalletCore.xcframework"
        ),
    ]
)
