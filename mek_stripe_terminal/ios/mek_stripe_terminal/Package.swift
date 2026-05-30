// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "mek_stripe_terminal",
    platforms: [
        .iOS("15.0"),
    ],
    products: [
        .library(name: "mek-stripe-terminal", targets: ["mek_stripe_terminal"])
    ],
    dependencies: [
        .package(url: "https://github.com/stripe/stripe-terminal-ios", from: "5.5.0"),
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
    ],
    targets: [
        .target(
            name: "mek_stripe_terminal",
            dependencies: [
                .product(name: "StripeTerminal", package: "stripe-terminal-ios"),
                .product(name: "FlutterFramework", package: "FlutterFramework"),
            ],
            path: "Sources/mek_stripe_terminal"
        )
    ]
)
