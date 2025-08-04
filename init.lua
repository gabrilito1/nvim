-- Configuração básica do Neovim
vim.opt.number = true          -- Mostrar números das linhas
vim.opt.relativenumber = true  -- Números relativos
vim.opt.tabstop = 4            -- Tamanho do Tab
vim.opt.shiftwidth = 4         -- Tamanho do indent
vim.opt.expandtab = true       -- Usa espaços no lugar de Tabs
vim.opt.smartindent = true     -- Indenta automaticamente
-- Melhorias visuais
vim.opt.termguicolors = true   -- Habilita cores 24-bit

-- Plugins com Packer
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'  -- Packer gerenciador de plugins
    use 'nvim-treesitter/nvim-treesitter'  -- Syntax highlight
    use 'preservim/nerdtree'      -- Navegador de arquivos
    use 'vim-airline/vim-airline' -- Barra de status estilizada
    use 'morhetz/gruvbox' -- Tema atual 
end)

-- Configuração de atalhos de teclas
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Mapeamento para copiar o conteúdo do arquivo para o clipboard no Linux
vim.api.nvim_set_keymap('n', '<C-c>', ':w !xclip -selection clipboard<CR>', { noremap = true, silent = true })

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "cpp", "lua" },  -- Instala suporte para C++ e lua para o  init
    highlight = { enable = true },
}

-- Atalho para compilar no terminal
vim.api.nvim_set_keymap('n', '<F5>', ':term g++ % -o %:r && ./%:r<CR>', { noremap = true, silent = true })

-- Atalho para abrir o init.lua
    
vim.api.nvim_set_keymap('n', '<C-e>', ':edit $MYVIMRC<CR>', { noremap = true, silent = true })

-- Visual
vim.o.background = "light"
vim.cmd('colorscheme gruvbox')  -- Tema só trocar

-- Cor do cursor para o Modo Normal (bloco)
vim.api.nvim_set_hl(0, 'NormalCursor', { bg = '#000000', fg = '#fbf1c7' }) -- Fundo preto, texto claro (cor do gruvbox)
-- Cor do cursor para o Modo de Inserção (barra vertical)
vim.api.nvim_set_hl(0, 'InsertCursor', { bg = '#000000' }) -- Fundo preto
vim.opt.guicursor = table.concat({
  'n-v-c-sm:block-NormalCursor-blinkwait175-blinkoff175-blinkon175',
  'i-ci-ve:ver25-InsertCursor'
}, ',')
