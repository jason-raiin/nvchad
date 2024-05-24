return {
  "echasnovski/mini.animate",
  event = "VeryLazy",
  config = function()
    -- check for mouse scroll action
    local mouse_scrolled = false
    for _, scroll in ipairs { "Up", "Down" } do
      local key = "<ScrollWheel" .. scroll .. ">"
      vim.keymap.set({ "", "i" }, key, function()
        mouse_scrolled = true
        return key
      end, { expr = true })
    end

    local animate = require "mini.animate"
    animate.setup {
      resize = {
        timing = animate.gen_timing.linear { duration = 100, unit = "total" },
      },
      scroll = {
        timing = animate.gen_timing.linear { duration = 100, unit = "total" },
        -- do not animate for mouse scrolls
        subscroll = animate.gen_subscroll.equal {
          predicate = function(total_scroll)
            if mouse_scrolled then
              mouse_scrolled = false
              return false
            end
            return total_scroll > 1
          end,
        },
      },
      open = {
        enable = false,
        winconfig = animate.gen_winconfig.wipe { direction = "from_edge" },
        winblend = animate.gen_winblend.linear { from = 80, to = 100 },
      },
      close = {
        enable = false,
        winconfig = animate.gen_winconfig.wipe { direction = "to_edge" },
        winblend = animate.gen_winblend.linear { from = 100, to = 80 },
      },
    }
  end,
}
