GitCloud
========



[![oclif](https://img.shields.io/badge/cli-oclif-brightgreen.svg)](https://oclif.io)
[![Version](https://img.shields.io/npm/v/GitCloud.svg)](https://npmjs.org/package/GitCloud)
[![Downloads/week](https://img.shields.io/npm/dw/GitCloud.svg)](https://npmjs.org/package/GitCloud)
[![License](https://img.shields.io/npm/l/GitCloud.svg)](https://github.com/Coyenn/GitCloud/blob/master/package.json)

<!-- toc -->
* [Usage](#usage)
* [Commands](#commands)
<!-- tocstop -->
# Usage
<!-- usage -->
```sh-session
$ npm install -g GitCloud
$ GitCloud COMMAND
running command...
$ GitCloud (-v|--version|version)
GitCloud/0.0.0 linux-x64 node-v14.17.6
$ GitCloud --help [COMMAND]
USAGE
  $ GitCloud COMMAND
...
```
<!-- usagestop -->
# Commands
<!-- commands -->
* [`GitCloud hello [FILE]`](#gitcloud-hello-file)
* [`GitCloud help [COMMAND]`](#gitcloud-help-command)

## `GitCloud hello [FILE]`

describe the command here

```
USAGE
  $ GitCloud hello [FILE]

OPTIONS
  -f, --force
  -h, --help       show CLI help
  -n, --name=name  name to print

EXAMPLE
  $ GitCloud hello
  hello world from ./src/hello.ts!
```

_See code: [src/commands/hello.ts](https://github.com/Coyenn/GitCloud/blob/v0.0.0/src/commands/hello.ts)_

## `GitCloud help [COMMAND]`

display help for GitCloud

```
USAGE
  $ GitCloud help [COMMAND]

ARGUMENTS
  COMMAND  command to show help for

OPTIONS
  --all  see all commands in CLI
```

_See code: [@oclif/plugin-help](https://github.com/oclif/plugin-help/blob/v3.2.3/src/commands/help.ts)_
<!-- commandsstop -->
