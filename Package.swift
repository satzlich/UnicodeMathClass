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
