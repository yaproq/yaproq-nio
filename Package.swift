// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "yaproq-nio",
    products: [.library(name: "YaproqNIO", targets: ["YaproqNIO"])],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.29.0"),
        .package(name: "yaproq", url: "https://github.com/yaproq/yaproq.git", .branch("master"))
    ],
    targets: [
        .target(name: "YaproqNIO", dependencies: [
            .product(name: "NIO", package: "swift-nio"),
            .product(name: "Yaproq", package: "yaproq")
        ]),
        .testTarget(
            name: "YaproqNIOTests",
            dependencies: [.target(name: "YaproqNIO")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
