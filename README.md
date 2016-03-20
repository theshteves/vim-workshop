# Getting Started with Vim

### Steven Kneiser's notes for his [Spartan Hackers](http://spartanhackers.com/) talk

Windows users should download PuTTY:

```
http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html
```

Also if you want to get the most out of the talk then I strongly urge you to get ahead by taking an hour to go through or at very least start a basics tutorial. On most unix systems you should actually be able to do that by running this simple command in the tutorial:

```shell
vimtutor
```

*See you at the talk!*

## Foreword (5 minutes)

"Your thinking is no longer interrupted by the mechanical process of getting your code onto the screen."

- Make cursor obnoxiously large
- http://thoughtbot.github.io/vimulator/
- 

Why vim is important to know:

-  
- Get ahead in CSE320 (petty, I know) 

If you've absolutely never touched vim before then welcome!  *...you've come to the right place.*

## All you NEED to know (5 minutes)

- Basic command list

Congratulations

- The **modal** editor... 

on command mode:
I know that may seem to make no sense but get this:  it's extremely efficient at manuevering text.

More about modes...

Personal tip:  Remap Caps Lock -> Ctrl if you don't care

## Basic Navigation (15 minutes)

#### Maneuvering Text

-
-
- Search

#### Maneuvering the Window 

-

## Understanding Text Objects (5 minutes)

In vim, text is more than a string of characters, vim takes care to understand the subtle nuances between everything from a word to a WORD.  I don't even think I know what that means...

#### Operators

- **d** - delete/cut
- **y** - yank/copy
- **c** - change (like delete but leaves you in *insert mode*)

#### Powerful Examples

- **ci(** - change in parentheses
- **dt;** - delete 'till semi-colon
- **y3f/** - yank through the third "/" 

Take note of...

## Getting the most out of Vim (30 minutes)

#### Buffers, Windows, & Tabs

- o&O flags

#### Customizing Vim w/ Options

- options everyone should know
- vimrc's

#### Registers

Now we can get into the less common but immensely powerful feature of vim...

Examples:

- turn words into html tags
- 
- whenever you need to repeat a non-trivial task ALOT (CSE320 K-maps)

#### Expanding Vim w/ Plugins

- NERDtree
- 
- expanding text-objects

## Final words (5 minutes)

#### Alternative editors

- Microsoft Word *lol seriously, I use vim for IAH papers*
- A case for other editors (hah more like just vi,  ...and Emacs   ...maybe)

## Further Reading

- [My favorite cheatsheet](http://i.imgur.com/YLInLlY.png)
- [Learn from others' screencasts](http://vimcasts.org/)
- [More on vim registers](http://blog.sanctum.geek.nz/advanced-vim-registers/)

