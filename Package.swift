// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "test-sdk-spm",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // UI products include TestCommon so the app links it automatically.
        .library(
            name: "TestIDScanUI",
            targets: ["TestCommon", "TestIDScanUI"]
        ),
        .library(
            name: "TestFaceScanUI",
            targets: ["TestCommon", "TestFaceScanUI"]
        ),
    ],
    targets: [
        // NOTE: The URLs & checksums are filled in by your publish script.
        .binaryTarget(name: "TestCommon", url: "https://github.com/jrickett/test-sdk-spm/releases/download/0.1.2/TestCommon-0.1.2.zip", checksum: "590663d2335f8838102dc39f07316c79d9943722517d7315c11f31173c9d5627"),
        .binaryTarget(name: "TestIDScanUI", url: "https://github.com/jrickett/test-sdk-spm/releases/download/0.1.2/TestIDScanUI-0.1.2.zip", checksum: "c4bd47f73d4bca871bdc0baed15481a6e66debaab321003df387972272c85fbc"),
        .binaryTarget(name: "TestFaceScanUI", url: "https://github.com/jrickett/test-sdk-spm/releases/download/0.1.2/TestFaceScanUI-0.1.2.zip", checksum: "0e9573562523eb5b1bd126758fa2ee85ffd99a748db80bc17dc74ccea291221a"),
    ]
)
