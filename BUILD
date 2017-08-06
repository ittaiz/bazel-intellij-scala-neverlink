load("@io_bazel_rules_scala//scala:scala.bzl", "scala_library", "scala_binary", "scala_test")
scala_library(
    name = "bazeltest",
    srcs = ["A.java"],
    deps = ["//third_party:javax_servlet_api",
            ],
)
scala_library(
    name = "bazeltest2",
    srcs = ["B.java"],
    deps = ["//third_party:javax_servlet_api_never_link",
            ],
)

