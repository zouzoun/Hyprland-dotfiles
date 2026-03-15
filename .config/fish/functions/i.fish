function i --wraps='paru -S' --description 'alias i=paru -S --needed'
    paru -S --needed $argv
end
