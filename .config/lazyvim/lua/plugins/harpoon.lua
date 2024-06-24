return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  enabled = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    local make_finder = function(harpoon_files)
      local paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(paths, item.value)
      end

      return require("telescope.finders").new_table({
        results = paths,
      })
    end

    local conf = require("telescope.config").values

    local toggle_telescope = function(harpoon_files)
      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = make_finder(harpoon_files),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
          attach_mappings = function(prompt_buffer_number, map)
            map("i", "<C-d>", function()
              local state = require("telescope.actions.state")
              local selected_entry = state.get_selected_entry()
              local current_picker = state.get_current_picker(prompt_buffer_number)

              harpoon:list():remove_at(selected_entry.index)
              current_picker:refresh(make_finder(harpoon:list()))
            end)

            return true
          end,
        })
        :find()
    end

    require("which-key").register({
      ["<leader>m"] = {
        name = "marks",
        a = {
          function()
            harpoon:list():add()
          end,
          "add",
        },
        d = {
          function()
            harpoon:list():remove()
          end,
          "delete",
        },
        u = {
          function()
            toggle_telescope(harpoon:list())
          end,
          "ui",
        },
      },
    })
  end,
}
