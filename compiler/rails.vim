" Vim compiler file

if exists("current_compiler")
  finish
endif

CompilerSet errorformat=%D(in\ %f),
      \%\\s%#from\ %f:%l:%m,
      \%\\s%#from\ %f:%l:,
      \%\\s%##\ %f:%l:%m,
      \%\\s%##\ %f:%l,
      \%\\s%#[%f:%l:\ %#%m,
      \%\\s%#%f:%l:\ %#%m,
      \%\\s%#%f:%l:,
      \%m\ [%f:%l]:,
      \%+Erake\ aborted!,
      \%+EDon't\ know\ how\ to\ build\ task\ %.%#,
      \%+Einvalid\ option:%.%#,
      \%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#

runtime! compiler/rake.vim

let current_compiler = "rails"

CompilerSet makeprg=rails

CompilerSet errorformat^=
      \%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$
      \%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,
      \%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$
      \%\\&%\\s\ %#%m%\\>\ \ %#%f,
      \Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,
      \%-GOverwrite%.%#\"h\"%.%#,
      \%+GCurrent\ version:%.%#,
      \%+G\ %#Prefix\ %#Verb%.%#,
      \%+G\ %#Code\ LOC:\ %.%#,
      \%+EUsage:\ rails\ %.%#,
      \%+EType\ 'rails'\ for\ help.

" -complete=customlist,rails#complete_rails
