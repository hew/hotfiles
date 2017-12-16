#!/bin/bash
set -e

if [ ! -f ~/.gitconfig ] ; then
    echo ""
    echo "First let us set up your git config..."
    echo ""
    read -p "Enter your full name: " fullname
    git config --global user.name "$fullname"
    read -p "Enter email address: " email
    git config --global user.email "$email"

    case "$(uname)" in
        Darwin)
            git config --global credential.helper osxkeychain
            ;;
        *)
            # gnome-keyring doesn't work on headless ssh sessions
            #read -p "Enter login password for user '$USER': " pass
            #gnome-keyring-daemon --daemonize
            #echo -n $pass | gnome-keyring-daemon --login
            #git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring
            git config --global credential.helper 'cache --timeout=360000'
            ;;
    esac

    echo ""
    echo "git configured."
fi
