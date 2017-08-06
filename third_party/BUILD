package(default_visibility = ["//visibility:public"])
load(":scala_import.bzl", "scala_import")
scala_import(
    name = "javax_servlet_api",
    visibility = ["//visibility:public"],
    jar = "@javax_servlet_javax_servlet_api//jar",
    runtime_deps = []
)
scala_import(
    name = "javax_servlet_api_never_link",
    visibility = ["//visibility:public"],
    jar = "@javax_servlet_javax_servlet_api//jar",
    runtime_deps = [],
    neverlink = True
)
