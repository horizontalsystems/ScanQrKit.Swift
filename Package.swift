// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "ScanQrKit",
        defaultLocalization: "en",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "ScanQrKit",
                    targets: ["ScanQrKit"]),
        ],
        dependencies: [
            .package(url: "https://github.com/horizontalsystems/ComponentKit.Swift.git", .upToNextMajor(from: "2.0.0")),
            .package(url: "https://github.com/horizontalsystems/ThemeKit.Swift.git", .upToNextMajor(from: "2.0.0")),
        ],
        targets: [
            .target(
                    name: "ScanQrKit",
                    dependencies: [
                        .product(name: "ComponentKit", package: "ComponentKit.Swift"),
                        .product(name: "ThemeKit", package: "ThemeKit.Swift"),
                    ]
            ),
        ]
)
