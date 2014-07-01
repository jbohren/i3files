
## Setup

To install the right (latest) version of i3:

```shell
git clone git@github.com:jbohren/i3files.git ~/.i3
sudo .i3/bootstrap.bash
```

## Usage

To run i3 via the wrapper script:

```shell
.i3/i3.zsh
```

## Design

This set of i3 config files and scripts enables the on-line generation of 
config files depending on the machine's hostname. These additional config
files are stored in the `configs` directory.

To create a new machine-specific config, create a file called `$HOST.cfg` in the
`configs` directory. These configuration options will be added in automatically
to the autogenerated `config` file.

