PURPLE='\033[0;35m' # Purple
NC='\033[0m' # No Color

function output() {
  echo -e "${PURPLE}$1${NC}"
}

output "Installing -> git curl"
sudo apt install git -y
sudo apt install curl -y

output "Installing -> oh-my-bash"
curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh | bash

output "Installing -> nvm"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

output "Sourcing -> .profile .bashrc"
source $HOME/.profile
source $HOME/.bashrc

output "Installing -> node yarn"
nvm install --lts
sudo apt install yarn -y

output "Installing -> python and libs"
sudo apt install python3
sudo apt install python3-venv -y
sudo apt install python3-dev -y

DOTFILES_PATH=$HOME/.dotfiles

output "Clonning dotfiles at ${DOTFILES_PATH}"
git clone https://github.com/laryssonalves/.dotfiles.git $DOTFILES_PATH