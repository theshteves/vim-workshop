# Getting Started with Vim

### Steven Kneiser's notes for his [Spartan Hackers](http://spartanhackers.com/) talk

![Prepare for vim](http://cdn.meme.am/instances/63319928.jpg)

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
- .

Why vim is important to know:

- .
- Get ahead in CSE320 and later classes (petty, I know) 


If you've absolutely never touched vim before, then welcome!  *...you've come to the right place.*

Just a heads up, I'm gonna be going over ALOT in a few moments.  After my bash workshop, my biggest critique was that I didn't bring enough for my seasoned users and so today I'm gonna bring it. If you're ever feeling overwhelmed, understand I didn't even discover most of these later concepts months after I began using vim and finally felt comfortable learning more.

At any point in the learning curve, you're going to be ready to really internalize 10% more information so don't feel bad that you feel behind after I explain virtually everything I know after half a year with vim.  Everyone here came to learn Vim (or see me ...I get it) so today I'm going to be a firehose of information and get as much to stick as possible.

## Basic Navigation (15 minutes)

#### All you NEED to know

- Basic command list

Congratulations

#### About modes

- The **modal** editor... 

In other text editors, you open them up and just start typing.  Vim is more powerful than that.  You should think of every single key on your keyboard as a function that operates on bodies of text.
If you just start typing, then you'll press the wrong few keys and end up deleting 300 lines of text.  This is mostly why everyone who hasn't learned vim is so scared of it.

on command mode:
I know that may seem to make no sense but get this:  it's extremely efficient at manuevering text.

More about modes...

Personal tip:  Remap Caps Lock -> Ctrl if you don't care *(system preferences > keyboard > modifier keys)*


#### Maneuvering Text

- .
- .
- Search

#### More Basic Commands

- .
- Cut, Copy & Paste

You never ACTUALLY delete something, think of these as cuts. Technically, they load into registers such that you can access the last 10 deletes at any time.  We'll take a closer look when we get to registers.

More about paste...

>	CSE320 Story:
>	
>	Just this last week, I was using vim to work with Assembly in class.  Think of it simply as code that manipulates addresses and values at the binary level *shivers*.  

Speaking of mistakes...

- Undo & Redo


#### Maneuvering the Window 

- .

## Understanding Text Objects (5 minutes)

In vim, text is more than a string of characters, vim takes care to understand the subtle nuances between everything from a word to a WORD.  I don't even think I know what that means... *of couse I do*.

#### Operators

- **d** - delete/cut
- **y** - yank/copy
- **c** - change (like delete but leaves you in *insert mode*)

#### Common Objects

- **w** - word
- **W** - WORD (includes all non-alphabet characters that aren't a <Space>)
- **s** - sentence
- **p** - paragraph
- **"** - quotes
- **t** - HTML tag

#### Powerful Examples

- **ci(** - change in parentheses
- **dt;** - delete 'till semi-colon
- **y3f/** - yank through the third "/" 

Take note of... and there are many more you can look up.  



## Getting the most out of Vim (30 minutes)

#### Buffers, Windows, & Tabs

- o&O flags
- .
- marks

#### Customizing Vim w/ Options

- options everyone should know
- vimrc's

#### Registers & Macros

Now we can get into the less common but immensely powerful feature of vim...

- history registers
- custom user registers
- recording & playback
- pasting from & to registers
- the black hole register [...obligatory](http://cdn.meme.am/instances/63319928.jpg)

Examples:

- turn words into html tags
- comment out lines
- (un)indent lines? (example of when there is a key-combination for that but you don't know it)
- whenever you need to repeat a non-trivial task ALOT (CSE320 K-maps)

#### Expanding Vim w/ Plugins

Honestly this isn't my expertise since I don't use any but many go on to find plugins that fit their needs.  The most common one I've heard of is NERDtree for a better filesystem interface but there is a serious argument to be made over taking some serious time to master vim before getting started down that path. Plugins aren't you're friend.  Vim is, and you should take the time to really take advantages of it's more powerful features.  I linked an excellent article below, *"Stop the Vim Configuration Madness"*, regarding this.

- NERDtree
- Surround
- other good ones expand the list of known text-objects

## Final words (5 minutes)

Thanks so much for coming out, everybody.  I couldn't admire you enough for taking the time to give Vim your attention.  Your text-editor is something that should grow with you as you do over the years and for such a widely-available and popular editor such as Vim, in a couple of months you're gonna wonder how you ever edited without it. Even now I find myself wishing I could jump between words when writing a Facebook status.  *Thanks again.*

#### Alternative editors

- Microsoft Word *lol seriously, I use vim for IAH papers*
- A case for other editors (hah more like **just vi**,  *...and Emacs   ...maybe*)

## Further Reading

- [My favorite cheatsheet](http://i.imgur.com/YLInLlY.png)
- [Learn from others' screencasts](http://vimcasts.org/)
- [More on vim registers](http://blog.sanctum.geek.nz/advanced-vim-registers/)

- [Learning Vim in 2014: Vim as Language](http://benmccormick.org/2014/07/02/learning-vim-in-2014-vim-as-language/)
- [Stop the Vim configuration Madness](http://usevim.com/2013/02/20/configuration/)
- []()

