" Tell MacVim that I don't want to use its Command-T action
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
endif
