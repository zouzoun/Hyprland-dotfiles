function GLFfetch --wraps='fastfetch --config ~/.config/fastfetch/Fetch/challenge.jsonc' --description 'alias Fetch=fastfetch --config ~/.config/fastfetch/Fetch/challenge.jsonc'
    fastfetch --config ~/.config/fastfetch/Fetch/challenge.jsonc $argv
end
