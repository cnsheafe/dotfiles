return {
  { "iamcco/markdown-preview.nvim", enabled = false },
  { "MeanderingProgrammer/render-markdown.nvim", enabled = false },
  {
    "brianhuster/live-preview.nvim",
    cmd = "LivePreview",
    keys = {
      {
        "<leader>cp",
        function()
          local preview = require("livepreview")
          vim.cmd(preview.is_running() and "LivePreview close" or "LivePreview start")
        end,
        ft = "markdown",
        desc = "Markdown Preview",
      },
    },
  },
}
