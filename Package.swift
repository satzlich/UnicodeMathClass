// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "swift-unicode-math",
    products: [
        .library(
            name: "UnicodeMath",
            targets: ["UnicodeMath"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "UnicodeMath",
            dependencies: []
        ),
        .testTarget(
            name: "UnicodeMathTests",
            dependencies: ["UnicodeMath"]
        ),
    ]
)
