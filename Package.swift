// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "czlib",
    products: [
        .library(name: "czlib", targets: ["czlib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ProfDrLuigi/CZlib/czlib.git", from: "1.2.11")
    ],
    targets: [
        .target(
            name: "Czlib",
            dependencies: ["Czlib"]
        ),
        .target(
            name: "czlib-example",
            dependencies: ["czlib"]
        ),
        .target(
            name: "Czlib",
            dependencies: []
        ),
        .testTarget(
            name: "czlibTests",
            dependencies: ["czlib"]
        ),
    ]
)
