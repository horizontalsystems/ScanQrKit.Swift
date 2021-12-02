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
        .package(url: "https://github.com/horizontalsystems/ThemeKit.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/horizontalsystems/ComponentKit.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "ScanQrKit",
            dependencies: ["ThemeKit", "ComponentKit"]),
    ]
)
