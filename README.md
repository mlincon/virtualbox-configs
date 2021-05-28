Bash scripts for installing required software/programs in Linux (debian/ubuntu).

##### Installations
`main.sh` installs the following programs:
- AWS CLI
- Docker and Docker-compose
- Git
- Go (the version must be specified)
- jq
- Miniconda3
- PostgreSQL
- Terraform CLI
- VSCode (along with extensions) 
- Zsh (with Powerlevel10k theme and will be set to default shell)

Run `main.sh` as non-root user, i.e. `./main.sh`. During installation, there will be prompt for password (`sudo`).  

After installation, restart for some of the changes to take in effect.

##### VSCode settings
`settings.json` file location
- Windows `%APPDATA%\Code\User\settings.json`
- macOS `$HOME/Library/Application Support/Code/User/settings.json`
- Linux `$HOME/.config/Code/User/settings.json`

Official doc on settings: `https://code.visualstudio.com/docs/getstarted/settings`
