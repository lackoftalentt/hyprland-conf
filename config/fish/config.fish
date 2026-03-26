# =================================================================
# Minimal Clean Fish Config
# =================================================================

#Disable default greeting
set -g fish_greeting

#Show fastfetch only once per login session
if status is-interactive
    if not test -f /tmp/fastfetch_shown_$USER
       fastfetch
       touch /tmp/fastfetch_shown_$USER
    end
end

# =================================================================
# Clean Single-Line Prompt
# =================================================================

function fish_prompt
    # Current directory
    set_color brblue
    echo -n (prompt_pwd)

    # Prompt arrow
    set_color green
    echo -n " > "

    set_color normal
end
