-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/scl/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/scl/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/scl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/scl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/scl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["coc-eslint"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc-eslint"
  },
  ["coc-html"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc-html"
  },
  ["coc-json"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc-json"
  },
  ["coc-prettier"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc-prettier"
  },
  ["coc-snippets"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc-snippets"
  },
  ["coc-tsserver"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc-tsserver"
  },
  ["coc-vetur"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc-vetur"
  },
  ["coc-vimlsp"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc-vimlsp"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ferret = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/ferret"
  },
  hop = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/hop"
  },
  indentline = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/indentline"
  },
  loupe = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/loupe"
  },
  ["nvim-luapad"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/nvim-luapad"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/oceanic-next"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/typescript-vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-projectionist"
  },
  ["vim-sensible"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-sensible"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["vim-vue"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-vue"
  },
  ["vim-zoom"] = {
    loaded = true,
    path = "/Users/scl/.local/share/nvim/site/pack/packer/start/vim-zoom"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "hop")
time([[Config for hop]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
vim.cmd [[command! -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
