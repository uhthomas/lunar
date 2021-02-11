workspace(
    name = "com_github_uhthomas_lunar",
    managed_directories = {"@yarn": ["node_modules"]},
)

load("//:deps.bzl", "repositories")

repositories()

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories", "yarn_install")

node_repositories(
    node_repositories = {
        "15.8.0-darwin_amd64": ("node-v15.8.0-darwin-x64.tar.gz", "node-v15.8.0-darwin-x64", "23f9a8a53d0d63e1d90afe775891088533fc5b277ef83db0cd2fc37951c09595"),
        "15.8.0-linux_amd64": ("node-v15.8.0-linux-x64.tar.xz", "node-v15.8.0-linux-x64", "cdb80f0810e5a076eb6079297073147d2564b1c2292bb4436b3f9e9e4fe18759"),
        "15.8.0-windows_amd64": ("node-v15.8.0-win-x64.zip", "node-v15.8.0-win-x64", "edb16def1fecaecaffcccf9352e9f94a029d47203f26ae44dc1d4aa7eef35940"),
    },
    node_version = "15.8.0",
    package_json = ["//:package.json"],
    yarn_repositories = {
        "1.22.10": ("yarn-v1.22.10.tar.gz", "yarn-v1.22.10", "7e433d4a77e2c79e6a7ae4866782608a8e8bcad3ec6783580577c59538381a6e"),
    },
    yarn_version = "1.22.10",
)

yarn_install(
    name = "yarn",
    package_json = "//:package.json",
    yarn_lock = "//:yarn.lock",
)

load("@rules_python//python:pip.bzl", "pip_repositories")

pip_repositories()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(go_version = "1.15.8")

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories")

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load("@io_bazel_rules_docker//nodejs:image.bzl", _nodejs_image_repos = "repositories")

_nodejs_image_repos()
