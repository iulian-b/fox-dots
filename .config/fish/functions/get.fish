function get --wraps='sudo pacman -S $argv' --description 'alias get=sudo pacman -S $argv'
  sudo pacman -S $argv $argv
        
end
