scriptencoding utf-8

let g:airline#themes#pneuma#palette = {}

let s:N1   = [ '#00005f' , '#2b2b2b' , 230  , 234  ]
let s:N2   = [ '#ffffff' , '#1a1a1a' , 255 , 238 ]
let s:N3   = [ '#ff0000' , '#0a0a0a' , 160  , 232 ]
let g:airline#themes#pneuma#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#pneuma#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }

let pal = g:airline#themes#pneuma#palette
for item in ['insert', 'replace', 'visual', 'inactive', 'ctrlp']
  exe "let pal.".item." = pal.normal"
  for suffix in ['_modified', '_paste']
    exe "let pal.".item.suffix. " = pal.normal"
  endfor
endfor