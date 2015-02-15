function cat --description=(type --no-functions --path cat)" with syntax highlighting"
    if begin; not isatty 1; or not isatty 0; or test (count $argv) -ne 1; end
        command cat $argv
    else
        source-highlight --out-format=esc --output=STDOUT --input $argv[1] 2>/dev/null
        or command cat $argv
    end
end
