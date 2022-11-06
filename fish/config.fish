if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set -U fish_greeting "🐟"
set -U fish_greeting ""

starship init fish | source

set STARSHIP_CONFIG ~/example/non/default/path/starship.toml
