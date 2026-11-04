if status is-interactive
    keychain --eval --quiet id_ed25519 | source
end

# remove fish greeting message
set fish_greeting

# use starship at startup
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# enabling transient prompt
function starship_transient_prompt_func
    starship module character
end

starship init fish | source
enable_transience

# Declarating default text editor
set -Ux EDITOR helix

# shell ntegrations
fzf --fish | source
zoxide init --cmd cd fish | source

# Spicetify
fish_add_path /home/$HOME/.spicetify
