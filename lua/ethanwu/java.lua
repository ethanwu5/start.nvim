return {
	"mfussenegger/nvim-jdtls",
	config = function()
		local cf = {
			cmd = {
				"/usr/bin/java", -- or '/path/to/java17_or_newer/bin/java'
				"-Declipse.application=org.eclipse.jdt.ls.core.id1",
				"-Dosgi.bundles.defaultStartLevel=4",
				"-Declipse.product=org.eclipse.jdt.ls.core.product",
				"-Dlog.protocol=true",
				"-Dlog.level=ALL",
				"-Xmx1g",
				"--add-modules=ALL-SYSTEM",
				"--add-opens",
				"java.base/java.util=ALL-UNNAMED",
				"--add-opens",
				"java.base/java.lang=ALL-UNNAMED",
				"-jar",
				"/Users/yangyang/jdt-language-server-1.40.0-202409111557/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar",
				"-configuration",
				"/Users/yangyang/jdt-language-server-1.40.0-202409111557/config_ma/",
				"-data",
				"/Users/yangyang/java_workspace",
			},
			root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
			-- root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew" }),
			settings = {
				java = {},
			},
			init_options = {
				bundles = {},
			},
		}
		require("jdtls").start_or_attach(cf)
	end,
}
