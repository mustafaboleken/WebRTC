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
    dependencies: [
        .package(
                        name: "Starscream",
                        url: "https://github.com/daltoniam/Starscream.git",
                        .exact("4.0.4")
                    ),
    ],
    targets: [
        .target(
            name: "Wrapper",
            dependencies: [
                "WebRTCiOSSDK", "Starscream"
            ],
	    path: "Wrapper"
        ),
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
