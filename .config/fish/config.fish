if status is-interactive

    # Show big "Arch"
    echo "   ___           __ 
  ╱ _ │ ________╱ ╱ 
 ╱ __ │╱ __╱ __╱ _ ╲
╱_╱ │_╱_╱  ╲__╱_╱╱_╱
                    "
    # System info
    fastfetch -c start.jsonc

    echo " "

    # Abbreviations (better than aliases)
    #abbr -a upd "arch-update"

    # Starship prompt
    #starship init fish | source
end

set -x TERMINAL kitty