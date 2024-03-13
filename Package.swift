// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "zlib",
    products: [
        .library(name: "zlib", targets: ["zlib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ProfDrLuigi/CZlib/czlib.git", from: "1.2.11")
    ],
    targets: [
        .target(
            name: "zlib",
            dependencies: ["Czlib"]
        ),
        .target(
            name: "zlib-example",
            dependencies: ["zlib"]
        ),
        .target(
            name: "Czlib",
            dependencies: []
        ),
        .testTarget(
            name: "zlibTests",
            dependencies: ["zlib"]
        ),
    ]
)
