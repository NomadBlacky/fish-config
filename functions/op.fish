function op
    if uname -a | grep -qo Cygwin
        cygstart $argv;
    else
        xdg-open  $argv;
    end
end
