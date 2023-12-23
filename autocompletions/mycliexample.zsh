#compdef mycliexample

_mycliexample() {
    local -a commands

    subcommands=(
        'version:Current version of the CLI'
    )
    _describe 'subcommands' subcommands
}

# Register the completion function
compdef _mycliexample mycliexample
