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
    use 'nvim-lua/plenary.nvim'  -- Dependência do Telescope
    use 'nvim-telescope/telescope.nvim' -- Package pra procurar arquivos
    use 'EdenEast/nightfox.nvim' -- Package da cor
    use 'wbthomason/packer.nvim'  -- Packer gerenciador de plugins
    use 'nvim-treesitter/nvim-treesitter'  -- Syntax highlight poderoso
    use 'preservim/nerdtree'      -- Navegador de arquivos
    use 'vim-airline/vim-airline' -- Barra de status estilizada
    use 'neoclide/coc.nvim'       -- Ferramentas como debugger (opcional)
end)





-- Configuração de atalhos de teclas
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Atalho para buscar arquivos com Telescope
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope find_files<CR>', { noremap = true, silent = true })





require'nvim-treesitter.configs'.setup {
    ensure_installed = { "cpp", "lua" },  -- Instala suporte para C++ e lua para o  init
    highlight = { enable = true },
}

-- Atalho para compilar no terminal
vim.api.nvim_set_keymap('n', '<F5>', ':!g++ % -o %:r && ./%:r<CR>', { noremap = true, silent = true })



-- Atalho para abrir o init.lua
    
vim.api.nvim_set_keymap('n', '<C-e>', ':edit $MYVIMRC<CR>', { noremap = true, silent = true })

-- Visual
vim.cmd('colorscheme nightfox')  -- Tema só trocar


