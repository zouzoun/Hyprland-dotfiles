if status is-interactive
    # Show big "Arch btw"
    echo "   ___           __     __   __        
  ╱ _ │ ________╱ ╱    ╱ ╱  ╱ ╱__    __
 ╱ __ │╱ __╱ __╱ _ ╲  ╱ _ ╲╱ __╱ │╱│╱ ╱
╱_╱ │_╱_╱  ╲__╱_╱╱_╱ ╱_.__╱╲__╱│__,__╱ 
                                       "
    # System info
    fastfetch -c start.jsonc

    # Abbreviations (better than aliases)
    #abbr -a upd "arch-update"

    # Starship prompt
    starship init fish | source
end
