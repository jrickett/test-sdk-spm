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
        .binaryTarget(name: "TestFaceScanUI", url: "https://github.com/jrickett/test-sdk-spm/releases/download/0.1.1/TestFaceScanUI-0.1.1.zip", checksum: "4c064b8706959bda5e108d48859858cef77bc9080ca23dbab2cecabb6b96842f"),
        .binaryTarget(name: "TestIDScanUI", url: "https://github.com/jrickett/test-sdk-spm/releases/download/0.1.1/TestIDScanUI-0.1.1.zip", checksum: "a7d769267ddab5d6ff8f68ad7728fb35cf425c7c8a6c8a168e3f378fcd2320cc")
    ]
)
