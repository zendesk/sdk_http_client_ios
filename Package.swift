// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskSDKHTTPClient",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ZendeskSDKHTTPClient",
            targets: [
                "ZendeskSDKHTTPClientTargets"
            ]
        )
    ],
    dependencies: [
        .package(
            name: "ZendeskSDKLogger",
            url: "https://github.com/zendesk/sdk_logger_ios",
            from: "0.9.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskSDKHTTPClient",
            path: "ZendeskSDKHTTPClient.xcframework"
        ),
        .target(
            name: "ZendeskSDKHTTPClientTargets",
            dependencies: [
                .target(name: "ZendeskSDKHTTPClient"),
                .product(name: "ZendeskSDKLogger", package: "ZendeskSDKLogger")
            ],
            path: "Sources"
        )
    ]
)
