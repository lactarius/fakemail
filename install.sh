#!/usr/bin/env bash
declare localpath="$HOME/.local"
declare iconpath="$localpath/share/icons/hicolor/256x256"

if [[ $1 == '-u' ]]; then
	sudo rm -f /usr/bin/mail
	rm -f "$iconpath/software-update.png"
	rm -f "$iconpath/error.png"
	[[ -z $(ls -A $iconpath) ]] && rm -r "$iconpath"
	rm -f "$localpath/bin/mail"
	echo 'Swindlemail uninstalled.'
else
	cp -R ./.local $HOME &&
		sudo ln -s $HOME/.local/bin/mail /usr/bin/ &&
		echo 'Swindlemail installed.'
fi
