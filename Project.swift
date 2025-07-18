import ProjectDescription

let project = Project(
    name: "Accblty",
    targets: [
        .target(
            name: "Accblty",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Accblty",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Accblty/Sources/**"],
            resources: ["Accblty/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "AccbltyTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AccbltyTests",
            infoPlist: .default,
            sources: ["Accblty/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Accblty")]
        ),
    ]
)
