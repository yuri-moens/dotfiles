export SSH_KEY_PATH="~/.ssh/yuri"

eval $(keychain --eval --agents ssh -Q --quiet ~/.ssh/yuri)
