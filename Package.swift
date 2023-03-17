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
            .binaryTarget(
                name: "WebRTC",
                path: "https://github.com/stasel/WebRTC/releases/download/111.0.0/WebRTC-M111.xcframework.zip",
            checksum: "b6b1b7924e539ae32286654509cc4e96465de399274d4a63bf0d2faae6f3a85b"
	    ),
    ]
)
