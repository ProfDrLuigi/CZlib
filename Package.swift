// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "zlib",
    products: [
        .library(name: "zlib", targets: ["czlib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ProfDrLuigi/CZlib/czlib.git", from: "1.2.11")
    ],
    targets: [
        .target(
            name: "Czlib",
            dependencies: ["zlib"]
        ),
        .target(
            name: "czlib-example",
            dependencies: ["zlib"]
        ),
        .target(
            name: "Czlib",
            dependencies: []
        ),
        .testTarget(
            name: "czlibTests",
            dependencies: ["zlib"]
        ),
    ]
)
