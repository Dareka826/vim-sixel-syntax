" Vim syntax file
" Language: Sixel Graphics

if exists("b:current_syntax")
  finish
endif

" Matches
syn match sixelNumber '\d\+'

syn match sixelBegin 'Pq'
syn match sixelBegin 'P;[012];\d\+q'      contains=sixelNumber
syn match sixelBegin 'P[0-9];[012];\d\+q' contains=sixelNumber
syn match sixelEnd   '\\'

syn match sixelRasterAttr             '"\d\+;\d\+;\d\+;\d\+' contains=sixelNumber
syn match sixelSequenceColorIntroduce '#\d\+' contains=sixelNumber
syn match sixelSequenceColorDefine    '#\d\+;\d;\d\+;\d\+;\d\+' contains=sixelNumber

syn match sixelSequenceRepeat         '!\d\+[?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\\]^_`abcdefghijklmnopqrstuvwxyz{|}~]' contains=sixelNumber
syn match sixelSequence               '[?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\\]^_`abcdefghijklmnopqrstuvwxyz{|}~]\+'

syn match sixelCR '\$'
syn match sixelNL '-'

" Highlighting
highlight! def link sixelNumber                 Number
highlight! def link sixelBegin                  Identifier
highlight! def link sixelEnd                    Identifier
highlight! def link sixelRasterAttr             Type
highlight! def link sixelSequenceColorIntroduce Function
highlight! def link sixelSequenceColorDefine    Statement
highlight! def link sixelSequenceRepeat         Statement
highlight! def link sixelSequence               Character
highlight! def link sixelCR                     Type
highlight! def link sixelNL                     Type

let b:current_syntax = "sixel"
