# Custom OS for Programming Contests

This repository contains recipe to customize the Ubuntu 22.04 Jammy
Jellyfish desktop image for an on-site programming contest.

[![Tests](https://github.com/rebornplusplus/contest-iso/actions/workflows/tests.yml/badge.svg)](https://github.com/rebornplusplus/contest-iso/actions/workflows/tests.yml)

## Installation

You can go two ways about this:

1. Prepare a custom ISO that can re-distributed.
2. Customize an existing installation.

### Prepare custom ISO with [Cubic](https://github.com/PJ-Singh-001/Cubic)

You can choose to create a customized ISO which can then be simply
installed in each machine. To do that, follow these simple steps:

1. Download a Ubuntu 22.04 desktop image. Find download options
   [here](http://releases.ubuntu.com/jammy/).
2. Launch Cubic, configure and find your way to the console in the
   chroot environment.  [Learn how to use Cubic](https://askubuntu.com/questions/741753/how-to-use-cubic-to-create-a-custom-ubuntu-live-cd-image).
3. Copy/clone the repository files in the `/root` directory. Make sure
   to customize options (user accounts etc.) in [vars.sh](./vars.sh).
4. Run the [install.sh](./install.sh) script as `root`. It _should_ run
   non-interactive.
5. Proceed with Cubic options, compress and generate the iso.

The ISO can now be re-distributed and installed on machines
independently.

### Customize an existing installation

If you have Ubuntu 22.04 installed on a machine, you can simply run the
scripts on the OS to customize your instance. The following steps should
do the trick:

1. Copy/clone the repository files. Make sure to customize options (user
   accounts etc.) in [vars.sh](./vars.sh).
2. Run the [install.sh](./install.sh) script as `root`. It _should_ run
   non-interactive.

## What's inside?

The scripts install the following utilities:

* Compilers
   - GCC
   - G++
   - Python3
   - Java
* Editors
   - Vim
   - Emacs
   - Nano
   - Sublime text
   - VS Code
   - Gedit
* IDEs
   - Code::Blocks
   - Geany
   - PyCharm
   - Intellij IDEA

Three user accounts are also created:

* admin	(for administrative usage, has sudo rights)
* main	(for the on-site main contest)
* mock	(for the mock contest)

There are also some pre-loaded configurations located in the
[dots](./dots/) directory.

## Contributing

Pull Requests are welcome!

## License

See [LICENSE](./LICENSE).

## TODO

- [ ] Trim down the image. The generated iso is about 6.5G now. Maybe
  extend the [trim.sh](./scripts/trim.sh) script?
- [ ] See if the process of creating ISO (with cubic) can be automated.
  [See context](https://answers.launchpad.net/cubic/+question/677976).
