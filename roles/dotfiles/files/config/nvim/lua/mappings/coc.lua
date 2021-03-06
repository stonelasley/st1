local map = require('utils').map
-- Use <c-space> to trigger completion.
map('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
map('n', '[g', '<Plug>(coc-diagnostic-prev)', { silent = true })
map('n', ']g', '<Plug>(coc-diagnostic-next)', { silent = true })

-- GoTo code navigation.
map('n', 'gd', '<Plug>(coc-definition)', { silent = true })
map('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
map('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
map('n', 'gr', '<Plug>(coc-references)', { silent = true })

-- TODO - ERROR <SID> not in a script context
-- Use K to show documentation in preview window.
-- map('n', '<silent> K', ':call <SID>show_documentation()<CR>')

-- Symbol renaming.
map('n', '<leader> rn', '<Plug>(coc-rename)')

-- Formatting selected code.
map('x', '<leader>f', '<Plug>(coc-format-selected)')
map('n', '<leader>f', '<Plug>(coc-format-selected)')
map('v', '<leader>f', '<Plug>(coc-format-selected)')

-- Applying codeAction to the selected region.
-- Example: `<leader>aap` for current paragraph
map('x', '<leader>a', '<Plug>(coc-codeaction-selected)')
map('n', '<leader>a', '<Plug>(coc-codeaction-selected)')

-- Remap keys for applying codeAction to the current buffer.
map('n', '<leader>ac', '<Plug>(coc-codeaction)')
-- Apply AutoFix to problem on the current line.
map('n', '<leader>qf', '<Plug>(coc-fix-current)')

-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
map('x', 'if', '<Plug>(coc-funcobj-i)')
map('o', 'if', '<Plug>(coc-funcobj-i)')
map('x', 'af', '<Plug>(coc-funcobj-a)')
map('o', 'af', '<Plug>(coc-funcobj-a)')
map('x', 'ic', '<Plug>(coc-classobj-i)')
map('o', 'ic', '<Plug>(coc-classobj-i)')
map('x', 'ac', '<Plug>(coc-classobj-a)')
map('o', 'ac', '<Plug>(coc-classobj-a)')

-- Remap <C-f> and <C-b> for scroll float windows/popups.
map('n', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', { noremap = true, silent = true, nowait = true, expr = true})
map('n', '<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', { noremap = true, silent = true, nowait = true, expr = true})
map('i', '<C-f>', 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', { noremap = true, silent = true, nowait = true, expr = true})
map('i', '<C-b>', 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', { noremap = true, silent = true, nowait = true, expr = true})
map('v', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', { noremap = true, silent = true, nowait = true, expr = true})
map('v', '<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', { noremap = true, silent = true, nowait = true, expr = true})

-- Use CTRL-S for selections ranges.
-- Requires 'textDocument/selectionRange' support of language server.
map('n', '<C-s>', '<Plug>(coc-range-select)', { silent = true })
map('x', '<C-s>', '<Plug>(coc-range-select)', { silent = true })

-- Mappings for CoCList
-- Show all diagnostics.
map('n', '<space>a', ':<C-u>CocList diagnostics<cr>', { silent = true, nowait = true })
map('n', '<space>e', ':<C-u>CocList extensions<cr>', { silent = true, nowait = true })
map('n', '<space>c', ':<C-u>CocList commands<cr>', { silent = true, nowait = true })
map('n', '<space>o', ':<C-u>CocList outline<cr>', { silent = true, nowait = true })
map('n', '<space>s', ':<C-u>CocList -I symbols<cr>', { silent = true, nowait = true })
map('n', '<space>j', ':<C-u>CocNext<CR>', { silent = true, nowait = true })
map('n', '<space>k', ':<C-u>CocPrev<CR>', { silent = true, nowait = true })
map('n', '<space>p', ':<C-u>CocListResume<CR>', { silent = true, nowait = true })
