return {
  { "iamcco/markdown-preview.nvim", enabled = false },
  { "MeanderingProgrammer/render-markdown.nvim", enabled = false },
  {
    "brianhuster/live-preview.nvim",
    cmd = "LivePreview",
    config = function()
      local min_port = 5500
      local max_port = 65535
      local port_count = max_port - min_port + 1
      local first_offset = vim.uv.hrtime() % port_count

      for offset = 0, port_count - 1 do
        local port = min_port + ((first_offset + offset) % port_count)
        local socket = vim.uv.new_tcp()

        if socket then
          local bound = socket:bind("127.0.0.1", port)
          local listening = bound and socket:listen(1, function() end)
          socket:close()

          if listening then
            require("livepreview.config").set({ port = port })
            return
          end
        end
      end

      error(("live-preview.nvim: no available port between %d and %d"):format(min_port, max_port))
    end,
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
