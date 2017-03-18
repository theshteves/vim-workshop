# Getting Started with Vim

[![Spartan Hackers](http://spartanhackers.com/static/img/spartan-hackers-banner.png)](http://spartanhackers.com)

[![Vim Video](http://img.youtube.com/vi/zaeIhUQQxQA/0.jpg)](https://youtu.be/zaeIhUQQxQA)

###### Click the image above to see the screencast!

If you want to get the most out of the talk then I strongly urge you to get ahead by taking an hour to go through or at very least start a basics tutorial. On most unix systems you should actually be able to do that by running this simple command in the tutorial:

```shell
vimtutor
```

*See you at the talk!*

## Foreword (5 minutes)

Why IS Vim important to know? You already made up your mind when you came but...  it's important to understand the following:

- Could I live without it?  *Easily.*
- Is it useful? *Hell yes.*
- Get ahead in CSE320 and later classes (petty, I know) 
- [Vim is guaranteed to exist on all Unix systems & exists on most Linux ones as well.  That kind of broad coverage makes learning it worth it](http://stackoverflow.com/questions/597077/what-are-the-benefits-of-learning-vim)
- It's not half as much effort as you think it's going to be.  If you haven't already gone through the *vimtutor*, then we're going to cover all those concepts in the first 10 minutes and **it's all downhill from there**.

> "Your thinking is no longer interrupted by the mechanical process of getting your code on to the screen."  -Confuscious (Trust me)

If you've absolutely never touched vim before, then welcome!  *...you've come to the right place.*  If this is your first time, than I am truly honored.

Just a heads up, I'm gonna be going over A LOT in a few moments.  After my [bash workshop](https://github.com/theshteves/bash-workshop), my biggest critique was that I didn't bring enough for my seasoned users and so today I'm not holding much back. If you're ever feeling overwhelmed, understand that I didn't even discover most of these later concepts until months after I began using vim and finally felt comfortable learning them.

At any point in the learning curve, you're going to be ready to really internalize 10% more information so don't feel bad that you feel behind after I explain virtually everything I know after half a year with vim.  Everyone here came to learn Vim (or see me ...I get it) so today I'm going to benefit everyone by becoming a firehose of information and getting as much to stick as possible.

## Basic Navigation (20 minutes)

#### All you NEED to know

Once you open up vim:

- **i** - enter insert mode

From here you can enter text like you would in any simple text editor (you might not be able to <backspace> like you'd expect depending on your configuration but we'll fix that later).  As soon as you're done making edits:

- **ESC or ^c (ctrl-c)** - return to normal/command mode

If at any point you feel scared and would like to just get away from the beautiful beast that is Vim, then you will always be able to spam either of those keys without consequence and you'll quickly be greeted by audio & visual bells that make that system error sound you might be familiar with (we can turn those off later too).  Now that we are done making changes and would like to either save (or *write*), quit, or both:

- **:w**, **:q**, **:wq**

This will promptly write to the file and/or quit depending on what you do.  Vim will only yell at you if you try and quit after having made changes, which it will simply ask you to re-try with a "**:q!**"

> Congratulations!  You now know everything there is to know about Vim just as you would any other text editor!
> 
> Okay maybe the mouse is disabled and pasting isn't working as you would expect but you're about to learn why you didn't really need that mouse in the first place.  *Everything else you learn about Vim is simply a means to speed up the editing process.*  It's not something to fear, just an awesome plethora of shortcuts to make you faster whenver you feel ready to learn them.

#### About modes

In other text editors, you open them up and just start typing.  Vim is more powerful than that.  You should think of every single key on your keyboard as a function that operates on bodies of text.
If you just start jamming on your keyboard, then don't be surprised when a few keys end up deleting 300 lines of text.  This is mostly why everyone who hasn't learned vim is so scared of it so **whenever you're in doubt, remember ^c**.

###### Command Mode

This is the default mode that you are in whenever you open a file and/or have "escaped" from any others. That may seem to make no sense since insert mode should be the default, but get this:  **it's extremely efficient at manuevering text**.  This is the place where you can enter all those neat little keyboard functions you're about to learn and, like magic, they'll execute.

###### Visual Mode

- **v** - enter visual mode

This should be thought of as a subset of command mode.  It's useful for highlighting bodies of text that we'll perform functions on later.  Like many commands we'll go over, there are cool little variations that handle other use cases.  For example:

- **V** - enter visual mode (only selects entire lines at a time)
- **^v** - enter visual block mode (think of how you'd copy tables)

###### Insert Mode

This is the one you pressed **i** to enter.  It's the dead-simple mode that (BIG SURPRISE!) you use whenever you want to add new text.  Expect to spend much more time outside of insert mode than in it. However, it's time to learn a couple variations:

- **a** - appends text (literally insert mode but starts AFTER your cursor)
- **A** - appends text starting at the end of the line
- **I** - enters insert mode at the beginning of the line

> Reminder: do NOT get caught up memorizing every one of these.  I will leave you with a couple awesome cheatsheets & resources that you should return to from time to time. What you SHOULD do everytime I introduce a command is think:
> 
> "That exists?!! I should totally try that out sometime before I forgot"


#### Maneuvering Text w/ Motions

- **h**, **j**, **k**, **l** - your arrow keys

![Vim Keys](http://www.catonmat.net/images/why-vim-uses-hjkl/adm-3a-hjkl-keyboard.jpg)

Funny enough, this is probably the biggest hurdle to learning Vim.  I hope that brings you comfort that the VERY ARROW KEYS are probably the least intuitive part to Vim so unfortunately this is just something you are going to have to brute-force.  I can't offer you much advice but **I CAN point you to [an online game that tricks you into learning them by having you maneuver a cool landscape](http://vim-adventures.com/)**  There is good news, everything else after this will only begin to replace your need to move one character at a time.

- **0**, **$** - snaps to start/end of line
- **w**, **e**, **b** - skips across "words"

> Now it's worth mentioning *count*: to most commands you learn, they can be given a count.  We'll take another look at this later but notice what happens if you type **3k** or **2w**.

- **/**, **?** - searches for keyword upon <Enter>

Search can also be a great way to skip across text.  Later on we'll set our search to highlight the results.  All you need to know is that in order to skip across results:  press **n** or **N** to hop to the next or previous.  The **?** key does the same except with everything simply flipped, a reversed search.

#### More Basic Commands

- **x** - delete character under cursor
- **p** - paste after your cursor
- **P** - paste before your cursor

We'll get to how to properly cut & copy later but first:  you never ACTUALLY delete something, think of these as cuts. Technically, they load into registers such that you can access the last 10 deletes at any time.  We'll take a closer look when we get to registers.

More about paste...

>	CSE-320 Story:
>	
>	Just this last week, I was using vim to work with Assembly in class.  Think of it simply as code that manipulates addresses and values at the binary level *shivers*.  Anyways, I wanted to make the computer stall for a full second.  Well hmm, processors probably clock in at about ten trillion ticks per second...
>	
>	Time to get to work:
>	
>	Simply copy the line of Assembly code for "no operation" and paste with a simple "1-0-0-0-0-0-0-0-0-0-0-0-0-0-p"...
>	
>	Well there goes 50% of the CPU Usage on the server rack dedicated to north.cse.msu.edu.  If only I could've pressed ten trillion ESC's...  Don't worry I remoted back in from somewhere else and manually killed the process *God bless it's soul*  Speaking of mistakes...

- **u** - undo
- **^r** - re-do

Also here's a couple more cool ones because why not:

- **r** - replace (swaps character under cursor with the one you type after)
- **R** - enters insert mode (only overwrites with each character you enter)
- **o** - open a new line below in insert mode
- **O** - open a new line above in insert mode

#### Maneuvering the Window 

Alright, we've learned more than enough commands to get us moving around text, now it's time to get to shifting the window:

- **gg** - hop to the first line
- **G** - hop to the last line

Those are the big ones that anyone should eventually know.  However, for the sake of organization, I'm going to dump all the cool and lesser known ones here:

> Another reminder: PLEASE don't try too hard to remember these at first glance, come back when you simply feel ready.  I simply want you to know that they exist.

- **H** - shift cursor to top of window or *high*
- **M** - shift cursor to middle of window or *mid*
- **L** - shift cursor to bottom of window or *low*
- **^b** - Scroll up one page or *back*
- **^u** - Scroll up 1/2 page or *up*
- **^y** - Scroll up one line
- **^e** - Scroll down one line
- **^d** - Scroll down 1/2 page or *down*
- **^f** - Scroll down one page or *foreward*

Congratulations! You're officially a vim user that knows as much as anyone who's finished the tutorial a couple times and feels somewhat comfortable.  You should know that vim has built-in help pages that cover any subject in serious depth.  We'll cover them later.  For now all you need to know is:

- **:help** - Opens up the help pages in another window upon <Enter>

## Understanding Text Objects (10 minutes)

In vim, text is more than a string of characters, vim takes care to understand the subtle nuances between everything from a word to a WORD.  I don't even think I know what that means... *of couse I do*. What makes vim's text-objects so powerful is that **with each operator, text-object, and motion you know, the number of commands you can use multiplies.** 

#### Operators

- **d** - delete/cut
- **y** - yank/copy
- **c** - change (like delete but leaves you in *insert mode*)
- **v** - visualize (**PERFECT for learning what exactly you are operating on**)

#### Common Objects

- **w** - word
- **W** - WORD (includes all non-alphabet characters that aren't a <Space>)
- **s** - sentence
- **p** - paragraph
- **t** - HTML tag
- other character pairs like quotes & parentheses

#### Powerful Examples

There are MANY more you can look up but this is the beginning of what makes Vim soo cool.  Remember that we can use a count before a text-object or motion in order to multiply it.

- **ci(** - change in parentheses
- **dt;** - delete 'till semi-colon
- **y3f/** - yank through the third "/" 

Now that we have text-objects and operators in our toolbox, it's now is the perfect time to learn how to *repeat* something we just did. 

- **.** - repeat the previous command

Imagine you do your homework for CSE-331 in plaintext.  Stupid, I know (...but I do *because Vim*).  And because you're lazy, you always copy the previous homework so that you can not re-do all that formatting.  Well you now have a document with a bunch of "HW6"'s everywhere you want a "HW7".  A great idea would be to search for "HW6" and change it, and then press "n" to jump to the next instance and press "." to repeat the same change. THIS is the very beginning of some of the powerful things you can accomplish with Vim and hopefully now you can somehwat appreciate why Vim-fanboys feel the need to rub it in everyone's face... #sorrynotsorry

Okay, you just learned A LOT...  like more than some who use Vim for months even do.  Most users go through the tutorial, wait a month, do it again a couple times, and spam the hjkl keys to get around and it's a shame after having known Vim for MONTHS.  Don't feel worried that you don't know enough, there's so much to learn and if there's anything I want you to take away from this talk, it's to give Vim time.  **Learn a couple commands and be patient as you grow more comfortable with them, but don't stop there.**  After a little time, that's precisely when you're ready to open your mind to even more tips & tricks. 

We're finally gonna take a breather from all those keyboard shortcuts and approach some of the more functional aspects behind the editor asides from moving around text.

>
> 5-minute recess for people to stretch, get some food, and go to the bathroom.
>

## Getting the most out of Vim (30 minutes)

#### Customizing Vim w/ Options

Let's take a closer look at some of the first commands we ever learned, the wierd ones that began with a **:**

- run shell commands with **:!**
- can use Regular Expressions [RegEx](http://regexr.com/)
- options everyone should know
- check out some included vimrc's

#### Buffers, Windows, & Tabs

- Definitions
- Commands (Refer to cheatsheet)
- Marks (see "Vim Marks" below)
- vim's o&O bash flags - open multiple files with these and vim will auto-open them in split windows

#### Registers & Macros

Now we can get into the less common but immensely powerful feature of vim...

- history registers
- custom user registers
- recording & playback
- pasting from & to registers (^X Mode)
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

#### Alternative editors

<<<<<<< 3689b1f7851f4c2db6395e000ec025a59bbfcebe
- Microsoft Word *lol seriously, I use vim for IAH papers*
- A case for other editors (hah, more like **just vi**  *...and Emacs   ...maybe*)
=======
- Microsoft Word *lol seriously, I use vim for college essays*
- A case for other editors (hah more like **just vi**,  *...and Emacs   ...maybe*)
>>>>>>> Added some cool resources

> Thanks so much for coming out, everybody.  I couldn't admire you enough for taking the time to give Vim your attention.
> 
> Your text-editor is something that should grow with you as you do over the years and for such a widely-available and deceptively-deep editor such as Vim, in a couple of months you're gonna wonder how you ever edited without it. Even now I find myself wishing I could jump between words when writing a Facebook status.
> 
> We're always learning new things, and when it comes to Vim, you should never never never stop. *Thanks again.*

## Further Reading

###### [Short URL to this talk](https://goo.gl/nRqVfL)

###### Other information

- [My ABSOLUTE FAVORITE cheatsheet](http://i.imgur.com/YLInLlY.png)

- [More on vim marks](http://vim.wikia.com/wiki/Using_marks)

- [More on vim registers](http://blog.sanctum.geek.nz/advanced-vim-registers/)

- [Learn from others' screencasts](http://vimcasts.org/)

- [Hardcore? Dive into vimscript](http://learnvimscriptthehardway.stevelosh.com/)

- [Awesome plugin search](http://vimawesome.com/)

- [Folding: something cool I learned just after the talk](http://vim.wikia.com/wiki/Folding)

###### Relevant articles

- [Learning Vim in 2014: Vim as Language](http://benmccormick.org/2014/07/02/learning-vim-in-2014-vim-as-language/)

- [Stop the Vim configuration Madness](http://usevim.com/2013/02/20/configuration/)

- [Wikipedia - Editor War (Vim vs. Emacs)](https://en.wikipedia.org/wiki/Editor_war)
