// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "PerformanceCheck",
    platforms: [
        .macOS(.v15),
    ],
    dependencies: [
        .package(url: "https://github.com/paiv/swift-pcg-random.git", from: "2.0.0")
    ],
    targets: [
        .executableTarget(
            name: "PerformanceCheck",
            dependencies: [
                .product(name: "PcgRandom", package: "swift-pcg-random"),
            ]),
    ]
)
