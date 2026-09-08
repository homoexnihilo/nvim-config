local lombok = vim.fn.stdpath("data") .. "/mason/share/jdtls/lombok.jar"

vim.lsp.config("jdtls", {
  cmd = {
    "jdtls",
    "--jvm-arg=-javaagent:" .. lombok,
  },
  cmd_env = {
    JAVA_HOME = "C:/Program Files/Eclipse Adoptium/jdk-21.0.12.101-hotspot",
  },
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "JavaSE-17",
            path = "C:/Program Files/Eclipse Adoptium/jdk-17.0.8.101-hotspot",
          },
        },
      },
    },
  },
})

vim.lsp.enable("jdtls")
