# wtc-nix-env
An install repo that would create a universal environment for students to complete their projects

# default.nix
This Nix expression defines a package that includes Python, Java JDK, IntelliJ, Visual Studio Code, Home-Manager, and any other dependencies required to build them.

# shell.nix
This file will be used to provide a shell environment for development.
This Nix expression defines a shell environment that includes the my-env package from default.nix and provides access to nix and git.

# install-nix.sh
This script will download and install the experimental version of Nix and set up the necessary environment variables.
*Steps
--chmod +x install-nix.sh
then
--./install-nix.sh
