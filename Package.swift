// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v10), .macOS(.v10_11)],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
        .library(
            name: "WebRTCiOSSDK",
            targets: ["WebRTCiOSSDK"]),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            path: "WebRTC.xcframework"
        ),
        .binaryTarget(
            name: "WebRTCiOSSDK",
            path: "WebRTCiOSSDK.xcframework"
        ),
    ]
)
