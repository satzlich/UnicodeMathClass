// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UnicodeMathClass",
    products: [
        .library(
            name: "UnicodeMathClass",
            targets: ["UnicodeMathClass"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "UnicodeMathClass",
            dependencies: []
        ),
        .testTarget(
            name: "UnicodeMathClassTests",
            dependencies: ["UnicodeMathClass"]
        ),
    ]
)