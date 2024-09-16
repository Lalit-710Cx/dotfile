return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
      ██╗      █████╗ ██╗     ██╗████████╗███████╗ ██╗ ██████╗  ██████╗██╗  ██╗
      ██║     ██╔══██╗██║     ██║╚══██╔══╝╚════██║███║██╔═████╗██╔════╝╚██╗██╔╝
      ██║     ███████║██║     ██║   ██║█████╗ ██╔╝╚██║██║██╔██║██║      ╚███╔╝ 
      ██║     ██╔══██║██║     ██║   ██║╚════╝██╔╝  ██║████╔╝██║██║      ██╔██╗ 
      ███████╗██║  ██║███████╗██║   ██║      ██║   ██║╚██████╔╝╚██████╗██╔╝ ██╗
      ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝   ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝
      
      [ @bikrammahato ]
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
      opts.theme = "doom"
    end,
  },
}

-- return {
--   "goolord/alpha-nvim",
--   opts = function(_, opts)
--     local logo = [[
--
--     ]]
--     opts.section.header.var = vim.split(logo, "\n", { trimempty = true })
--   end,
-- }
