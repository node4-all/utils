#!/bin/bash

# colorpath.sh
NC=$(tput sgr0)			  # no color
RED=$(tput setaf 1)		# red color
CYAN=$(tput setaf 6)	# cyan color
YELLOW=$(tput setaf 3)

function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/pulsar-node/utils/main/logo.sh)
}

function printLine {
  echo "---------------------------------------------------------------------------------------"
}

function printCyan {
  echo -e "${CYAN}${1}${NC}"
}

function printRed {
  echo -e "${RED}${1}${NC}"
}

function addToPath {
  source $HOME/.bash_profile
  PATH_EXIST=$(grep ${1} $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=$PATH:${1}" >>$HOME/.bash_profile
  fi
}
