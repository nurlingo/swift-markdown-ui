// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "swift-markdown-ui",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "MarkdownUI",
      targets: ["MarkdownUI"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/nurlingo/NetworkImage", from: "6.0.0"),
  ],
  targets: [
    .target(name: "cmark-gfm"),
    .target(
      name: "MarkdownUI",
      dependencies: [
        "cmark-gfm",
        .product(name: "NetworkImage", package: "NetworkImage"),
      ]
    ),
  ]
)
