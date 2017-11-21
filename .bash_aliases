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

export -f activate

