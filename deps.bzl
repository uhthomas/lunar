load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repositories():
    http_archive(
        name = "bazel_gazelle",
        sha256 = "222e49f034ca7a1d1231422cdb67066b885819885c356673cb1f72f748a3c9d4",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.3/bazel-gazelle-v0.22.3.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.3/bazel-gazelle-v0.22.3.tar.gz",
        ],
    )
    http_archive(
        name = "build_bazel_rules_nodejs",
        sha256 = "fcc6dccb39ca88d481224536eb8f9fa754619676c6163f87aa6af94059b02b12",
        urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/3.2.0/rules_nodejs-3.2.0.tar.gz"],
    )
    http_archive(
        name = "com_github_bazelbuild_buildtools",
        sha256 = "a02ba93b96a8151b5d8d3466580f6c1f7e77212c4eb181cba53eb2cae7752a23",
        strip_prefix = "buildtools-3.5.0",
        urls = ["https://github.com/bazelbuild/buildtools/archive/3.5.0.tar.gz"],
    )
    esbuild_repositories()
    http_archive(
        name = "rules_proto",
        sha256 = "d8992e6eeec276d49f1d4e63cfa05bbed6d4a26cfe6ca63c972827a0d141ea3b",
        strip_prefix = "rules_proto-cfdc2fa31879c0aebe31ce7702b1a9c8a4be02d2",
        urls = ["https://github.com/bazelbuild/rules_proto/archive/cfdc2fa31879c0aebe31ce7702b1a9c8a4be02d2.tar.gz"],
    )
    http_archive(
        name = "rules_python",
        sha256 = "b6d46438523a3ec0f3cead544190ee13223a52f6a6765a29eae7b7cc24cc83a0",
        urls = ["https://github.com/bazelbuild/rules_python/releases/download/0.1.0/rules_python-0.1.0.tar.gz"],
    )
    http_archive(
        name = "io_bazel_rules_docker",
        sha256 = "893726fd83049cece8bfec873091c43877449f28987adf5c13b17801ecf0a788",
        strip_prefix = "rules_docker-e15c9ebf203b7fa708e69ff5f1cdcf427d7edf6f",
        urls = ["https://github.com/bazelbuild/rules_docker/archive/e15c9ebf203b7fa708e69ff5f1cdcf427d7edf6f.tar.gz"],
    )
    http_archive(
        name = "io_bazel_rules_go",
        sha256 = "7904dbecbaffd068651916dce77ff3437679f9d20e1a7956bff43826e7645fcc",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.25.1/rules_go-v0.25.1.tar.gz",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.25.1/rules_go-v0.25.1.tar.gz",
        ],
    )

def esbuild_repositories():
    _ESBUILD_VERSION = "0.8.45"
    http_archive(
        name = "esbuild_darwin",
        build_file_content = """exports_files(["bin/esbuild"])""",
        sha256 = "3bf980b5175df873dd84fd614d57722f3b1b9c7e74929504e26192d23075d5c3",
        strip_prefix = "package",
        urls = ["https://registry.npmjs.org/esbuild-darwin-64/-/esbuild-darwin-64-%s.tgz" % _ESBUILD_VERSION],
    )

    http_archive(
        name = "esbuild_windows",
        build_file_content = """exports_files(["esbuild.exe"])""",
        sha256 = "826cd58553e7b6910dd22aba001cd72af34e05c9c3e9af567b5b2a6b1c9f3941",
        strip_prefix = "package",
        urls = ["https://registry.npmjs.org/esbuild-windows-64/-/esbuild-windows-64-%s.tgz" % _ESBUILD_VERSION],
    )
    http_archive(
        name = "esbuild_linux",
        build_file_content = """exports_files(["bin/esbuild"])""",
        sha256 = "d0358576fd541e15322a43ded13abab351ae42ccf2f3a00d6282451f02b32f23",
        strip_prefix = "package",
        urls = ["https://registry.npmjs.org/esbuild-linux-64/-/esbuild-linux-64-%s.tgz" % _ESBUILD_VERSION],
    )
