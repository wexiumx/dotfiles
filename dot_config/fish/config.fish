# avoid retyping passphrase for git
if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c)
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
end

# remove fish greeting message
set fish_greeting

# setting ssh
if not set -q SSH_AUTH_SOCK
    ssh-agent -c | source
end

# Use oh-my-posh
oh-my-posh init fish -c ~/.config/ohmyposh/zen.toml | source

# shell integrations
fzf --fish | source
zoxide init --cmd cd fish | source

fish_add_path /home/pesaff/.spicetify

fish_add_path /home/wexiumx/.spicetify
