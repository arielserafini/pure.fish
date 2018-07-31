# Pure.fish

A [Pure](https://github.com/sindresorhus/pure)-inspired prompt for [fish shell](http://fishshell.com/).

Forked from [Brandon Weiss's](http://github.com/brandonweiss/pure.fish/fork) version of Pure.

## Installation

### Manually

[Download this file](https://raw.githubusercontent.com/will-stone/pure.fish/master/fish_prompt.fish) and save it as `~/.config/fish/functions/fish_prompt.fish`.

If you want to use vi key bindings, create a new empty file and save it as `~/.config/fish/functions/fish_mode_prompt.fish` to disable the default mode indicator.

### Automatically

Here’s a one-liner you can run (given `~/.config/fish/functions` exists):

```shell
curl https://raw.githubusercontent.com/will-stone/pure.fish/master/fish_prompt.fish > ~/.config/fish/functions/fish_prompt.fish; touch ~/.config/fish/functions/fish_mode_prompt.fish
```
