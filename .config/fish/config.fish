if status is-interactive
end

set fish_greeting
set -gx PATH /usr/local/bin /usr/local/sbin /usr/bin /bin /usr/sbin /sbin /usr/X11/bin $PATH

### add python to path
set -x PATH /Users/farbod/Library/Python/3.9/bin $PATH

### aliases
alias prompt 'clear_line; set_prompt --color $fish_color_prompt $fish_prompt'
alias b='brew'
alias g='git'
alias n='npm'
alias ni='npm i'
alias pip='pip3'
alias p='python3'
alias d='docker'
### proxies
#set HTTP_PROXY socks5://127.0.0.1:800
#set HTTPS_PROXY socks5://127.0.0.1:800
#set -gx PATH /usr/local/opt/curl/bin:$PATH

#yarn config set proxy http://127.0.0.1:800
#yarn config set https-proxy http://127.0.0.1:800
#git config --global http.proxy http://127.0.0.1:800
#git config --global https.proxy http://127.0.0.1:800

### git decorations
# Display informative Git status in the prompt (e.g., branch name, dirty state, etc.).
set -g __fish_git_prompt_show_informative_status true

# Show color hints in the Git prompt for different Git states (e.g., dirty, staged, conflicted).
set -g __fish_git_prompt_showcolorhints true

# Show verbose information about the upstream status in the Git prompt.
set -g __fish_git_prompt_showupstream verbose

function clear_line
  echo -e "\r"  # Carriage return to move cursor to beginning of line
  echo -e "\033[K"  # Clear entire line
end

# Add SSH keys to the fish session
ssh-add --apple-use-keychain ~/.ssh/git -q
ssh-add --apple-load-keychain -q

starship init fish | source
fzf --fish | source
#fzf_configure_bindings
