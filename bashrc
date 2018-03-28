. /etc/bashrc
shopt -s checkwinsize
complete -cf {sudo,man,which,type}
alias ls='ls -v --color --group-directories-first --quoting-style=literal'
alias ll='ls -v --color --group-directories-first --quoting-style=literal -l --human-readable --all'
alias grep='grep --color'
alias egrep='egrep --color'
bind 'set completion-ignore-case on'
bind 'set colored-stats on'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
list() { repoquery --list $1; }
requires() { repoquery --requires $1; }
provides() { repoquery --provides $1; }
conflicts() { repoquery --conflicts $1; }
obsoletes() { repoquery --obsoletes $1; }
whatrequires() { repoquery --whatrequires $1; }
whatprovides() { repoquery --whatprovides $1; }
whatconflicts() { repoquery --whatconflicts $1; }
whatobsoletes() { repoquery --whatobsoletes $1; }
enhances() { repoquery --enhances $1; }
suggests() { repoquery --suggests $1; }
recommends() { repoquery --recommends $1; }
supplements() { repoquery --supplements $1; }
whatenhances() { repoquery --whatenhances $1; }
whatsuggests() { repoquery --whatsuggests $1; }
whatrecommends() { repoquery --whatrecommends $1; }
whatsupplements() { repoquery --whatsupplements $1; }
pyprovides() {
	pkg=$(repoquery --whatprovides python-$1 | tail -1)
	pkg2=$(repoquery --whatprovides python2-$1 | tail -1)
	pkg3=$(repoquery --whatprovides python$(rpm -E %python3_pkgversion)-$1 | tail -1)
	pkg0=$(repoquery --whatprovides $1 | tail -1)
	if [[ -n $pkg2 ]]; then
		echo "python2-$1 ($pkg2)"
	elif [[ -n $pkg ]]; then
		echo "python-$1 ($pkg)"
	else
		if [[ -n $pkg0 ]]; then
			echo "$1 ($pkg0)"
		fi
	fi
	if [[ -n $pkg3 ]] && [[ $pkg3 != $pkg ]]; then
		echo "python$(rpm -E %python3_pkgversion)-$1 ($pkg3)"
	fi
}
goprovides() {
	repoquery --whatprovides "golang($1)"
}
perlprovides() {
	repoquery --whatprovides "perl($1)"
}
composerprovides() {
	repoquery --whatprovides "php-composer($1)"
}
PS1='\[\a\e[1;31m\][\u@\h \W]\$ \[\e[0m\]'
