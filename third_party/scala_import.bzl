def _scala_import_impl(ctx):
    return struct(
        scala = struct(
          outputs = struct(
            ijar = None,
            class_jar = ctx.attr.jar.files.to_list()[0],
          ),
        ),
        providers = [
          java_common.create_provider(
            compile_time_jars = ctx.attr.jar.files,
            runtime_jars = ctx.attr.jar.files + _collect(ctx.attr.runtime_deps),
          )
        ],
    )
def _collect(runtime_deps):
    transitive_runtime_jars = depset()
    for runtime_dep in runtime_deps:
        transitive_runtime_jars += runtime_dep[java_common.provider].transitive_runtime_jars
    return transitive_runtime_jars


scala_import = rule(
  implementation=_scala_import_impl,
  attrs={
      "jar": attr.label(),
      "runtime_deps": attr.label_list()
      },
)
