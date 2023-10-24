# macOS Setup

## iTerm2 profile

The profile configuration files for iTerm2 must be copied manually. See the [instructions](iterm2/README.md).

## Default shell

The default shell in macOS is `zsh`. To set it to `bash`:

```sh
# This will show something like /opt/homebrew/bin/bash
which -a bash

# chsh requires shells to be declared in /etc/shells
echo /opt/homebrew/bin/bash | sudo tee -a /etc/shells

sudo chsh -s /opt/homebrew/bin/bash $USER
```

### Common gotcha with Homebrew

Check the output of something like `which -a bash`.
If you see something like:

```sh
/opt/homebrew/bin/bash
/opt/homebrew/bin/bash
/opt/homebrew/bin/bash
/opt/homebrew/bin/bash
/bin/bash
```

You may have made this error: <https://github.com/withfig/fig/discussions/300>.

Note that `.bash_profile` handles this already.

## MacTex

Install [MacTeX](https://www.tug.org/mactex/mactex-download.html). Besides getting you LaTeX, this also lets you render Markdown as PDF with [`pandoc`](https://pandoc.org/).
