# iTerm2 Profile Configuration

## Installing the profile

First:

```sh
cp Profiles.json ~/Library/Application\ Support/iTerm2/DynamicProfiles
```

Under **Preferences** in iTerm2, select `Brian's Profile` and click **Other Actions...** -> **Set as Default**.

Then under **Keys** -> **Key Mappings** -> **Presets...**, click **Import**.
Navigate to this directory and open `keys.itermkeymap`.

Once the key map has gone into effect, you should be able to:
- Move the cursor to the previous/next word with Option+Left and Option+Right
- Move the cursor to the beginning/end of the line with Command+Left and Command+Right
- Delete the last word with Option+Delete
- Delete the line with Command+Delete

## References

- [iterm - Understanding "sending hex code" - Ask Different](https://apple.stackexchange.com/questions/265108/understanding-sending-hex-code)
- [GNU Readline Library](https://tiswww.cwru.edu/php/chet/readline/readline.html)
- [Where do I find a list of terminal key codes to remap shortcuts in bash? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/76566/where-do-i-find-a-list-of-terminal-key-codes-to-remap-shortcuts-in-bash)
- [Mac OS X, iTerm and the meta key | Think In Geek](https://thinkingeek.com/2012/11/17/mac-os-x-iterm-meta-key/)
