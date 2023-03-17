// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "iOSWebRTCSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "iOSWebRTCSDK",
	    targets: ["iOSWebRTCSDK"])
        ],
        dependencies: [ ],
        targets: [
            .target(
                name: "WebRTC",
                path: "WebRTC.xcframework"),
	    .target(
		name: "WebRTCiOSSDK",
		path: "WebRTCiOSSDK.xcframework")
    ]
)
