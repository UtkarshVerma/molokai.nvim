" clear cache so this reloads changes.
" useful for development
lua package.loaded['molokai'] = nil
lua package.loaded['molokai.theme'] = nil
lua package.loaded['molokai.colors'] = nil
lua package.loaded['molokai.util'] = nil
lua package.loaded['molokai.config'] = nil

lua require('molokai').colorscheme()
