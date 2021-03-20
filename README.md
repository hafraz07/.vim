# Vim resources

Resources I use to get better at vim to use it as my primary editor.
+ Getting started:
    + Type ```vimtutor``` on terminal
    + [4-week plan to learn vim](https://medium.com/actualize-network/how-to-learn-vim-a-four-week-plan-cd8b376a9b85)
+ Watch many times: <https://www.youtube.com/watch?v=wlR5gYd6um0>
    + Guide to text objects: <https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/>
    + [Your problem with Vim is that you don't grok vi](https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118)
+ [Guide to Navigation in Vim](https://blog.bespinian.io/posts/efficient-navigation-in-vim/)
    + [Youtube video covering very helpful navigation commands](https://www.youtube.com/watch?v=Qem8cpbJeYc)
+ [How to do 90% of the things plugins do with core vim](https://www.youtube.com/watch?v=XA2WjJbmmoM)
+ [Seven habits of effective text editing](https://www.moolenaar.net/habits.html)
+ [Vim guide for intermediate users](https://thevaluable.dev/vim-intermediate/)
+ [Vim guide for advanced users](https://thevaluable.dev/vim-advanced/)


### Miscellaneous helpful things
+ ```control+z``` to shift vim to bg. ```fg``` to bring to front again.
+ [Difference between the different ```map```s](https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping)

### Commands to master
+ ```;``` ``,`` - Go to next and previous occurrence of ```f + <character>``` within a line.
+ ```g;``` - Jump to next change
+ ```g,``` - Jump to previous change
+ ```ctrl-a``` - Insert the previous inserted text.
+ ```ctrl-r``` - Insert text from register.
+ ```ctrl-o``` - Go to older cursor position
+ ```ctrl-i``` - Go to next cursor postion
+ ```ctrl-o``` in ```Insert``` mode - Allows you to enter one normal mode command while staying in insert mode(e.g. moving cursor while in insert mode)

### Plugins I use
+ commentary
+ unimpaired
+ auto-pairs
+ vim-trailing-whitespace
+ vim-pasta
+ surround
+ syntastic
+ Zoom-Win
