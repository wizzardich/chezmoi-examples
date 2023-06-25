# This is the flow of the basic demo

1. Run the container:

   ```sh
   docker run -it -v $HOME/.ssh/id_rsa:/home/wizz/.ssh/id_rsa --rm wizzardich/chezmoi:linux
   ```

2. Show empty environment

   ```sh
   cd $HOME
   ls -la
   pwd
   ```

3. init chezmoi from chezmoi-talk-dotfiles

   ```sh
   # this can be as simple as chezmoi init wizzardich
   chezmoi init --ssh --branch templated-chezmoi wizzardich/chezmoi-talk-dotfiles
   ```

4. show that nothing is yet applied, but the directory and the configuration are now there

   ```sh
   ls -la
   fish
   chezmoi cd 
   ls -la
   ```

5. Apply stuff and start fish:

   ```sh
   chezmoi status
   chezmoi diff
   chezmoi apply
   fish
   ls -la
   ```
