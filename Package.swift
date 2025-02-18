// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "MediaPipeTasks",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "MediaPipeTasksVision",
            targets: ["MediaPipeTasksVision"]
        ),
        .library(
            name: "MediaPipeTasksCommon",
            targets: ["MediaPipeTasksCommon"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MediaPipeTasksCommon",
            path: "./XCFrameworks/MediaPipeTasksCommon/MediaPipeTasksCommon.xcframework"
        ),
        .binaryTarget(
            name: "MediaPipeTasksVision",
            path: "./XCFrameworks/MediaPipeTasksVision/MediaPipeTasksVision.xcframework"
        )
    ]
)
