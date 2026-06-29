function hyprmod --description 'alias hyprmod=cd hyprmod && uv sync && uv run hyprmod'
    cd hyprmod && uv sync && uv run hyprmod $argv
end
