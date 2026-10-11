bash old code


#alias redo_profile='source ~/.bash_profile'


# run debian package manager gui
alias synap='gksudo synaptic &'


function etar()
{

    if [ -z "$1" ]
    then
        echo
        echo fatal: Missing parameter
        echo \"\$1\" : Directory to be tar-balled
        echo

    else
        target="$(basename "$1")"
        parent="$(dirname "$1")"

        echo
        echo Parent Directory: "$parent";
        echo Directory to be tar-balled: "$target";
        echo

        if [ ! -d "$parent/$target" ];
        then
            echo fatal:
            echo "$parent/$target" doesnt exist.

        else

            tarball="$target.tar.bz2"

            # tar the specified directory
            tar cjf "$tarball" -C "$parent" "$target";

            # show results
            ls -ldh "$tarball"
        fi
    fi
}


# folder map
alias mm='tree -dlL 2'
alias m='tree -dlL'

alias pdf=file_view_pdf.sh
alias pic=file_view_image.sh

# Display X-Window "Class" and "Name" Properties
# Needl for Openbox Window Manager configuration
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" && echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""'

