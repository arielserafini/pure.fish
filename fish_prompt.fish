# Colour available commands green instead of white
set fish_color_command green

# Show un-truncated directory names in prompt
set fish_prompt_pwd_dir_length 0

#Prompt characters
set __fish_prompt_char_default '❯'
set __fish_prompt_char_vi_mode '❮'

# Git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch brblack
set __fish_git_prompt_color_dirtystate yellow
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_upstream cyan

# Git Characters
set __fish_git_prompt_char_dirtystate '* '
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_upstream_prefix ' '
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_char_upstream_diverged '⇅'

function _print_in_color
  set -l string $argv[1]
  set -l color  $argv[2]

  set_color $color
  printf $string
  set_color normal
end

function _prompt_color_for_status
  if test $argv[1] -eq 0
    echo magenta
  else
    echo red
  end
end

function prompt_mode_char
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    switch $fish_bind_mode
      case default
        echo $__fish_prompt_char_vi_mode
      case insert
        echo $__fish_prompt_char_default
      case replace_one
        echo $__fish_prompt_char_vi_mode
      case visual
        echo $__fish_prompt_char_vi_mode
    end
  else
    echo $__fish_prompt_char_default
  end
end

function fish_prompt
  set -l last_status $status
  set -l prompt_char (prompt_mode_char)

  printf "\n"

  _print_in_color (prompt_pwd) blue

  __fish_git_prompt " %s"

  printf "\n"

  _print_in_color "$prompt_char " (_prompt_color_for_status $last_status)
end