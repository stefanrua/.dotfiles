# .dotfiles

Configuration files suited to my taste.

## Installation

**These configs and scripts are for Debian**

Clone this repo to your home directory, some scripts use hardcoded paths relative to `~`.

Please read the `install` script before executing it, as well as the relevant
configuration files. If you don't, you might end up with unwanted changes with
no way of getting your original settings back!

```
cd .dotfiles/
./install
```

You can pass `-f` to `install` if you want to replace existing config files
when symlinking.

## Quick note regarding gaming

Linux's default CPU scheduler is optimized for throughput instead of responsiveness. This sucks for playing CPU intensive games such as CS:GO. Thankfully there are tweaks for remedying this: https://liquorix.net.
