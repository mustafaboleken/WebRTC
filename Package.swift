// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "iOSWebRTCSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "WebRTC",
	    targets: ["WebRTC"]),
	 .library(
            name: "WebRTCiOSSDK",
	    targets: ["WebRTCiOSSDK"])
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
