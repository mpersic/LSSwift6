// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LicenseSpringOE",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        // New executable product
        .executable(name: "LicenseTool", targets: ["LicenseTool"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    ],
    targets: [
        // Binary SDK target
        .binaryTarget(
            name: "LicenseSpringSDK",
            path: "LicenseSpring_Apple_SDK v6.12.12.zip"
        ),

        // CLI executable target
        .executableTarget(
            name: "LicenseTool",
            dependencies: [
                "LicenseSpringSDK",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            path: "Sources/LicenseTool" // folder containing LicenseTool.swift
        ),

        // Keep this if you still need it for some other purpose
        .executableTarget(
            name: "LicenseSpringOE",
            dependencies: [
                "LicenseSpringSDK",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
    ]
)

