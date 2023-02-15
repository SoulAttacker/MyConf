local status, formatter = pcall(require, "formatter")

if not status then

  vim.notify("not fond formatter plugin")

  return

end



formatter.setup({
  logging = true,
  log_level = vim.log.levels.WARN,

  filetype = {
    json = {

      function()

        return {

          exe = "prettier",

          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote" },

          stdin = true,

        }

      end,

    },

    python = {

      -- Configuration for psf/black
      function()
        return {
          exe = "python -m autopep8", -- this should be available on your $PATH
          args = {
            "--in-place --aggressive --aggressive",
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
          },
          stdin = false,
        }
      end,
    },
    }
})

