function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    # Empty line
    echo

    # User
    set_color $fish_color_user
    echo -n (whoami)
    set_color normal

    echo -n '@'

    # Host
    set_color $fish_color_host
    echo -n (hostname -s)
    set_color normal

    echo -n ':'

    # PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    __terlar_git_prompt
    __fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
        echo -n '(;x-x)っ '
    else
        echo -n '( ^-^)っ '
    end

    set_color normal
end
