
alias xclipsc='xclip -sel clip'

function activate() {
	possible_venv=("./venv" "./.venv")
	
	for venv in "${possible_venv[@]}"
	do
		if [ -d $venv ]
		then
			venv_folder=$venv
			found=true
		fi
	done

	if [ "$found" ]; then	
		source "${venv_folder}/bin/activate"
		return 1
	fi
	
	return 1
}

alias scan_wifi='sudo iwlist wlp2s0 scan | egrep -e SSID'
#export -f activate
alias folde_size='du --max-depth=1 -h'

set-title(){
  ORIG=$PS1
  TITLE="\e]2;$@\a"
  PS1=${ORIG}${TITLE}
}
