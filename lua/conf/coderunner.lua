require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		python = "python",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
	},
})
