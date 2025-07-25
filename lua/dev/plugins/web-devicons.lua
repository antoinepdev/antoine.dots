
return {
  "nvim-tree/nvim-web-devicons",
  opts = {
    strict = true,
    override_by_extension = {
      ["astro"] = {
        icon = "",
        color = "#f1502f",
        name = "Astro",
      },
      ["css"] = {
        icon = "",
        color = "#2965f1",
        name = "Css"
      }
    },
  },
}
