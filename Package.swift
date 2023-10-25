// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Math_Alamofire_Package",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Math_Alamofire_Package",
            targets: ["Math_Alamofire_Package"]),
    ],
    
    dependencies: [
//        .package(url: "https://github.com/ashleymills/Reachability.swift", .upToNextMajor(from: "5.1.0")),
        .package(url: "https://github.com/ashleymills/Reachability.swift", branch: "master")
  ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Math_Alamofire_Package",
            dependencies: [
                .target(name: "Math_Alamofire"),
//                .product(name: "Reachability.swift", package: "Reachability.swift")
                .product(name: "Reachability", package: "Reachability.swift"),

            ]),

            .binaryTarget(
                name: "Math_Alamofire",
                path: "./Sources/Math_Alamofire.xcframework"
            )
    ]
)
