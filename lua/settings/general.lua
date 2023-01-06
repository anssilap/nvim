function OS()
    return package.config:sub(1,1) == "/" and "unix" or "win"
end

