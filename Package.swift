// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "FDTextFieldTableViewCell",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "FDTextFieldTableViewCell",
            targets: ["FDTextFieldTableViewCell"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FDTextFieldTableViewCell",
            dependencies: []
        ),
        .testTarget(
            name: "FDTextFieldTableViewCellTests",
            dependencies: ["FDTextFieldTableViewCell"]
        )
    ]
)
