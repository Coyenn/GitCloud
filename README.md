# Project Boilerplate

This tool aims to streamline the setup and handling of cloud development environments. The "control" tool provides an easy way to interact with the development environment. Type `./control` for help.

## Getting Started

1. Delete the old git repository and init a new one

```bash
sudo rm -R .git && git init
```

2. Run:

```bash
./control install
```

3. Configure the .env file in the project root directory

4. (Optional) Add dependencies for the docker image of the developmen environment to the Dockerfile.editor file. The docker image is based off of ubuntu, so packages can be install via apt.

```Dockerfile
RUN some-command
```

4. Build the development environment

```bash
./control build
```

5. Finally start the project

```bash
./control start
```