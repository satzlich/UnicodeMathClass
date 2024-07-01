// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "swift-unicode-math",
    products: [
        .library(
            name: "unicode_math",
            targets: ["unicode_math"]
        ),
        .library(
            name: "unicode_math_class",
            targets: ["unicode_math_class"]
        ),
    ],
    targets: [
        .target(
            name: "unicode_math",
            dependencies: []
        ),
        .target(
            name: "unicode_math_class",
            dependencies: []
        ),
        .testTarget(
            name: "UnicodeMathTests",
            dependencies: ["unicode_math", "unicode_math_class"]
        ),
    ]
)
