# How to install Ruby on macOS

Install [rbenv](https://github.com/rbenv/rbenv):

```
brew install rbenv
```

List available versions:

```
rbenv install -l
```

Install the latest version:

```
rbenv install 3.1.2
```

Add to `.bash_profile.plugins`:

```bash
# Configure Ruby
eval "$(rbenv init - bash)"
export RBENV_VERSION=3.1.2
```

```
gem install bundler
```

Finally, open a new terminal session to use Ruby.
