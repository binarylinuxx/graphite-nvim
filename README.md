# graphite.nvim

A pure grayscale theme for Neovim, designed for eye comfort in low-light environments.  
No colors, no distractions—just clean typography.  

![Screenshot](nvim-window.png) 

### Why?
- **Easier on the eyes** at night (especially in dark rooms)  
- **Matches Graphite GTK** for system-wide aesthetic harmony 
- **Reduces visual fatigue** from colorful syntax highlighting  

### Installation

#### lazy.nvim
```lua
{
  "binarylinuxx/graphite-nvim",
  priority = 1000,  -- Load first
  config = function()
    vim.cmd.colorscheme("graphite")  -- Default grey variant
    -- Or choose from available variants:
    -- vim.cmd.colorscheme("graphite-grey")
    -- vim.cmd.colorscheme("graphite-purple") 
    -- vim.cmd.colorscheme("graphite-pink")
    -- vim.cmd.colorscheme("graphite-red")
    -- vim.cmd.colorscheme("graphite-orange")
    -- vim.cmd.colorscheme("graphite-yellow")
    -- vim.cmd.colorscheme("graphite-green")
    -- vim.cmd.colorscheme("graphite-teal")
    -- vim.cmd.colorscheme("graphite-blue")
  end,
}
```

### Available Variants
The theme comes with multiple color variations based on the original Graphite GTK theme:
- **Grey** (`graphite-grey`) - The classic grayscale look (default)
- **Purple** (`graphite-purple`) - A purple-tinted variation
- **Pink** (`graphite-pink`) - A pink-tinted variation  
- **Red** (`graphite-red`) - A red-tinted variation
- **Orange** (`graphite-orange`) - An orange-tinted variation
- **Yellow** (`graphite-yellow`) - A yellow-tinted variation
- **Green** (`graphite-green`) - A green-tinted variation
- **Teal** (`graphite-teal`) - A teal-tinted variation
- **Blue** (`graphite-blue`) - A blue-tinted variation

All variants maintain the same eye-friendly grayscale base while offering subtle color undertones for different preferences.
