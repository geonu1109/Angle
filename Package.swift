// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Angle",
    products: [
        .library(
            name: "Angle",
            targets: ["Angle"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Angle",
            dependencies: []),
        .testTarget(
            name: "AngleTests",
            dependencies: ["Angle"]),
    ]
)
