docker run -it -v $HOME/.ssh/id_rsa:/home/wizz/.ssh/id_rsa --rm wizzardich/chezmoi:linux
# currently no configuration is in the container
cd $HOME
ls -la
pwd
# this can be as simple as chezmoi init wizzardich
chezmoi init --ssh --branch templated-chezmoi wizzardich/chezmoi-talk-dotfiles
# with this the configuration is downloaded, but not yet applied
ls -la
fish
chezmoi cd 
ls -la
chezmoi status
chezmoi diff
# let's apply the configuration and check
chezmoi apply
fish
ls -la
chezmoi cd
git history
