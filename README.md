# Project Boilerplate

This tool aims to streamline the setup and handling of cloud development environments.

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
4. Build the development environment

```bash
./control build
```

5. Finally start the project

```bash
./control start
```