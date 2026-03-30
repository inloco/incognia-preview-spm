// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Incognia",
    products: [
        .library(
            name: "IncogniaSDK",
            targets: ["IncogniaWrapper", "IncogniaSDK"]),
    ],
    targets: [
        .target(
            name: "IncogniaWrapper",
            path: "SwiftPM-Wrap/Incognia-Wrapper",
            resources: [
                .process("Resources/PrivacyInfo.xcprivacy"),
            ]
        ),
        .binaryTarget(
            name: "IncogniaSDK",
            path: "XCFrameworks/7.0.0/IncogniaSDK.xcframework"
        ),
    ]
)