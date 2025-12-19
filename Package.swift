// Package.swift

import PackageDescription

let package = Package(
    name: "DependabotVulnTest",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "DependabotVulnTest",
            targets: ["DependabotVulnTest"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio-http2.git", exact: "1.37.0"),
        .package(url: "https://github.com/grpc/grpc-swift-2.git", from: "2.0.0"),
        )
    ],
    targets: [
        .target(
            name: "DependabotVulnTest",
            dependencies: [
                .product(
                    name: "VulnerableSwiftPackage",
                    package: "vulnerable-swift-package"
                )
            ]
        )
    ]
)
