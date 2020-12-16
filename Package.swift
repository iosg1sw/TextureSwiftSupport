// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "TextureSwiftSupport",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "TextureSwiftSupport", targets: ["TextureSwiftSupport"])
    ],
    dependencies: [
        .package(url: "https://github.com/iosg1sw/Texture.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "TextureSwiftSupport",
            dependencies: ["AsyncDisplayKit"],
            path: ".",
            sources: ["TextureSwiftSupport/"],
            publicHeadersPath: "TextureSwiftSupport"
        )
    ]
)

