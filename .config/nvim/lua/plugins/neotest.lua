return {
  "nvim-neotest/neotest",
  config = function()
    -- get neotest namespace
    local neotest_ns = vim.api.nvim_create_namespace "neotest"
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
          return message
        end,
      },
    }, neotest_ns)
    require("neotest").setup {
      adapters = {
        require "neotest-go",
        require "neotest-rust",
        require "neotest-python",
        require "neotest-mocha" {
          command = "mocha --",
          command_args = function(context)
            -- The context contains:
            --   results_path: The file that json results are written to
            --   test_name_pattern: The generated pattern for the test
            --   path: The path to the test file
            --
            -- It should return a string array of arguments
            --
            -- Not specifying 'command_args' will use the defaults below
            return {
              "--full-trace",
              "--reporter=json",
              "--reporter-options=output=" .. context.results_path,
              "--grep=" .. context.test_name_pattern,
              context.path,
            }
          end,
          env = { CI = true },
          cwd = function(path) return vim.fn.getcwd() end,
        },
      },
    }
  end,
  ft = { "go", "rust", "python", "typescript", "javascript" },
  dependencies = {
    "nvim-neotest/neotest-go",
    "nvim-neotest/neotest-python",
    "rouge8/neotest-rust",
    "adrigzr/neotest-mocha",
  },
}
