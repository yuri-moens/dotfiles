export SSH_KEY_PATH="~/.ssh/id_rsa"

eval $(keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa)
