# `gress` - LaTeX Class for Daily Progress Tracker and Technical Notes

`gress` short for "progress" (or "regress" 😢) is a LateX class file used  for a progress tracker and technical notes. Note that it currently only works with `pdflatex`.

Currently I use it to document and
reflect on the different events, thoughts, and ideas that I encounter during my
everyday life as an engineering student.

You may be thinking that LaTeX is overkill for a personal journal/progress tracker and you'd probably be right. But for all the extra complexity that LaTeX brings, you also get the ability to have beautifully typeset entries with neat PDF links. The real killer feature though is the ability to use LaTeX's many packages to input mathematical formulas and symbols.

To be honest it's still pretty overkill and most of the features aren't needed. But if you work in a science/math heavy field and want to take technical notes, I think this is a solid way to go. Oh and I also added some emoji's to spice things up.

Currently, this is just something that I use for myself and is customized to my
needs. However, if you have any features that you would like me to add, just let
me know! There are currently no plans to make this into package for CTAN.

I've also only tested this on macOS High Sierra, so please let me know if you
have some free time to help test different systems.

## Installations
1. Find out where `texmf` is on your computer

```bash
kpsewhich -var-value=TEXMFHOME
```

For me on macOS, this gives me `/Users/mbp7.2/Library/texmf`. For Windows, you might get something like `C:/Users/Seangottarun/texmf` or `~/texmf/` on UNIX or Linux.

2. Then `git clone` the latest copy of `gress` from my GitHub repo and move the file to wherever `texmf` is located for you and store it inside a folder called `latex` (you might need to make this if you don't already have it)

```bash
git clone
# move gress to texmf
# for example, I would run
mv gress /Users/mbp7.2/Library/texmf/tex/latex # your mv command might be different
```

3. Then `git clone` my fork of the `coloremoji` package by and place it at `/Users/mbp7.2/Library/texmf/tex/latex/` (for macOS users). Technically this step isn't required if you don't want to use emoji's or don't care to miss out on some of the newer ones.

```bash
git clone
# move the coloremoji to same spot for texmf that you put gress before
mv coloremoji /Users/mbp7.2/Library/texmf/tex/latex/
```
4. Check that everything works by making sure `kpsewhich` returns the right path

```bash
kpsewhich gress.cls
kpsewhich coloremoji.sty
```


## Key Features
1. Create specialized environments to record notes and observations on specific topics
