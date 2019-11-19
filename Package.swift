// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "FDTextFieldTableViewCell",
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
