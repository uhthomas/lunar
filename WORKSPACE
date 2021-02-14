workspace(
    name = "com_github_uhthomas_lunar",
    managed_directories = {"@yarn": ["node_modules"]},
)

load("//:deps.bzl", "repositories")

repositories()

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories", "yarn_install")

node_repositories(
    node_repositories = {
        "14.15.5-darwin_amd64": ("node-v14.15.5-darwin-x64.tar.gz", "node-v14.15.5-darwin-x64", "78e2a63c54f0d3e22f0b3d29a832d0379406a619f1107d6e74679a1e76a132b0"),
        "14.15.5-linux_amd64": ("node-v14.15.5-linux-x64.tar.xz", "node-v14.15.5-linux-x64", "fa198afa9a2872cde991c3aa71796894bf7b5310d6eb178c3eafcf66e3ae79a7"),
        "14.15.5-windows_amd64": ("node-v14.15.5-win-x64.zip", "node-v14.15.5-win-x64", "e691461adf7cac8b8b21da6e3a80d1bfe69d57e51ddc1377504302fcef4d7a69"),
    },
    node_version = "14.15.5",
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

load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

container_pull(
    name = "io_gcr_distroless_nodejs",
    digest = "sha256:fbe89e4caf51a8c2e4d4b0fb308e60e0f27e27597c3fc6564dc61dda85ef83ee",
    registry = "gcr.io",
    repository = "distroless/nodejs",
    # tag is ignored, only for documentation
    tag = "14",
)
