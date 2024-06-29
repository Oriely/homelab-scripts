function die() {
    exit 1
}

function exit() {
    exit 0
}

function setupCertificates() {
    echo "Creating certificates"
}

function prompt() {
    local _function=$2

    while true; do
        read -p "$1" answer
        
        answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')
        if [ "$answer" = "yes" ] || [ "$answer" = "y" ]; then
            echo "You typed yes"
            $_function
            break
        elif [ "$answer" = "no" ] || [ "$answer" = "n" ]; then
            echo "You typed no"
            break
        else
            echo "Please enter yes(y) or no(n). "
        fi
    done
}

function createConfig() {
    cat <<EOF >> output.txt
    server {}

    EOF
}

                                                                                                                                                                prompt "Do you want HTTPS yes(y) or no(n)?"