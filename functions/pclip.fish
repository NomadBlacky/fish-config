function pclip
    if command test -p /dev/stdin
        cat - | peco | xsel -bi
    end
end
