# How to use?

## if you want to install new Plugin

for example, plugin name is `hashivim/vim-terraform`,and add this line to `~/.vimrc`, I use `vim-plug` for manage plugin

`Plugin 'hashivim/vim-terraform'`

open vim and run `:PlugInstall`

well..done!

## how to set version control with .vimrc?

see my project, you can see I move all file to `.vim` directory, but `.vimrc` must to under `~/` directory, so you can set link

`$ ln -s ./.vim/.vimrc .`

and now you can see like this

```
lrwxr-xr-x   1 apa   staff      18 Jul 21 22:27 .tmux.conf -> ./.tmux/.tmux.conf
drwxr-x---   9 apa   staff     288 Sep  1 14:39 .vim
```

and well..done!
