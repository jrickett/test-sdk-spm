// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TestSDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "TestFaceScanUI", targets: ["TestFaceScanUI"]),
        .library(name: "TestIDScanUI",   targets: ["TestIDScanUI"]),
        .library(name: "TestUI",         targets: ["TestFaceScanUI", "TestIDScanUI"])
    ],
    dependencies: [],
    targets: [
        // We'll replace these with `url:` + `checksum:` once the Release is created.
        // For now, leave placeholders so the repo can build.
        .binaryTarget(
            name: "TestFaceScanUI",
            url: "https://github.com/jrickett/test-sdk-spm/releases/download/0.1.0/TestFaceScanUI.xcframework.zip",
            checksum: "5e567e6a35240434a96161ffe6769361a5991469669a9dc9d45688c6e87e0229"
        ),
        .binaryTarget(
            name: "TestIDScanUI",
            url: "https://github.com/jrickett/test-sdk-spm/releases/download/0.1.0/TestIDScanUI.xcframework.zip",
            checksum: "a916d0f45df70441e3f3d1f6a21e0cf1564edaf2e64c297ae28c14399a4e0158"
        )
    ]
)
