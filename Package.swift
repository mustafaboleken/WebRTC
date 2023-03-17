// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "WebRTC",
	    targets: ["WebRTC"]),
        ],
        dependencies: [ ],
        targets: [
            .target(
                name: "WebRTC",
                path: "WebRTC.xcframework"),
    ]
)
