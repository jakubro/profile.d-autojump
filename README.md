# profile.d-autojump

A plugin for [profile.d](https://github.com/jakubro/profile.d) that
integrates [autojump](https://github.com/wting/autojump) - a faster way to navigate your filesystem.

## Features

- Automatically installs and configures autojump
- Integrates with your shell to provide the `j` command
- Maintains jump database automatically
- Purges stale entries on shell startup

## Installation

1. Add the following line to your `~/.profiledrc`:

```bash
PLUGINS=(
  # ... your other plugins ...
  https://github.com/jakubro/profile.d-autojump
)
```

2. Run the installation commands:

```bash
profile.d-install
. ~/.bashrc
```

## Usage

Once installed, you can use autojump by:

1. Navigate to directories as you normally would using `cd`
2. After building up a database of directories, you can jump to frequently used directories using:

```bash
j directory-name
```

For example:

```bash
# First visit
cd /var/log/nginx

# Later, from anywhere
j nginx    # Jumps to /var/log/nginx
```

The more you use `cd` to visit directories, the more accurate autojump becomes at predicting where you want to go.

## How It Works

The plugin:

1. Installs autojump in `~/.autojump` during the installation phase
2. Loads autojump's bash integration on shell initialization
3. Automatically purges stale entries from the jump database when starting a new shell

## Requirements

- Python (for autojump installation)

## Contributing

If you would like to contribute to this project, please feel free to submit a pull request or open an issue for
discussion.

## License

MIT License - see the [LICENSE](LICENSE) file for details.
