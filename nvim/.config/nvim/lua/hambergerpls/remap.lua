vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")

vim.keymap.set("v", "<A-S-Up>", [[yPV]])
vim.keymap.set("v", "<A-S-Down>", [[ypV]])

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)

-- Close brackets automatically, with return
vim.keymap.set("i", "{<CR>", [[{<CR>}<C-O><S-O>]])
vim.keymap.set("i", "(<CR>", [[(<CR>)<c-o><s-o>]])
vim.keymap.set("i", "[<CR>", [[[<CR>]<c-o><s-o>]])
-- Close brackets without return
vim.keymap.set("i", "(", [[()<left>]])
vim.keymap.set("i", "{", [[{}<left>]])
vim.keymap.set("i", "[", [[[]<left>]])
-- Two cases below are covered by inoremap <exp>
--inoremap " ""<left>
--inoremap ' ''<left>
---- If you close a bracket that is already closed, it overwrites
--inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
--inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
--inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
--inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "'" ? "\<Right>" : "''<left>"
--inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"<left>"
---- enclose a word in normal mode with "'({[
--nnoremap ' mmbi'<esc>ea'<esc>`m<right>
--nnoremap " mmbi"<esc>ea"<esc>`m<right>
--nnoremap ( mmbi(<esc>ea)<esc>`m<right>
--nnoremap { mmbi{<esc>ea}<esc>`m<right>
--nnoremap [ mmbi[<esc>ea]<esc>`m<right>
---- enclose a selection in visual mode with "'({[
--vnoremap ' <Esc>`<i'<Esc>`>a<right>'<Esc>
--vnoremap " <Esc>`<i"<Esc>`>a<right>"<Esc>
--vnoremap ( <Esc>`<i(<Esc>`>a<right>)<Esc>
--vnoremap { <Esc>`<i{<Esc>`>a<right>}<Esc>
--vnoremap [ <Esc>`<i[<Esc>`>a<right>]<Esc>
