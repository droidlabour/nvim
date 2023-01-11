let g:python3_host_prog = '/usr/bin/python3'
let g:ruby_host_prog	= '/usr/bin/ruby'
let g:loaded_perl_provider = 0

"let g:phpactorPhpBin = '/opt/homebrew/opt/php@8.0/bin/php'
"let g:phpactorphpbin = '/opt/homebrew/opt/php@8.0/bin/php'

"let g:phpactorPhpBin = '/Users/droidlabour/.composer/vendor/bin/phpactor'
"let g:phpactorphpbin = '/Users/droidlabour/.composer/vendor/bin/phpactor'

lua require('plugins')

lua require('_nvim-lsp-php')
lua require('_nvim-lsp-python')
lua require('_nvim-lsp-typescript')
"lua require('_tokyonight')
colorscheme nightfox

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

"#################################### Telescope configurations ####################################
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>



"#################################### FileType configurations ####################################
autocmd FileType gitcommit setlocal colorcolumn=72



"#################################### Individual configurations ####################################
set tabstop=4                       " The width of a TAB is set to 4.
                                    " Still it is a \t. It is just that
                                    " Vim will interpret it to be having
                                    " a width of 4 spaces.
                                    "
set expandtab                       " Expand TABs to spaces.

nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprev<CR>
nnoremap <C-l> :tablast<CR>
nnoremap <C-h> :tabfirst<CR>

nnoremap <leader>dd <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>     " Show nvim lsp diagnostic message, for better readability with long error messages which aren't completely visible.

set shiftwidth=4                    " Indents will have a width of 4 spaces.
set softtabstop=4                   " Sets the number of columns for a TAB.
set cursorline                      " Highlight cursor line.

set nu                              " Turn on line numbering.
set relativenumber                  " Turn on relative line numbering.
