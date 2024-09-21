local config = {
	cmd = { "/Users/yangyang/jdt-language-server-1.40.0-202409111557/bin/jdtls" },
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
require("jdtls").start_or_attach(config)
