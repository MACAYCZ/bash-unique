#!/bin/bash

declare -r _unique_prefix="_"
declare -i _unique_current=0

unique_tst() {
	if typeset -p $1 2> /dev/null | grep -q '^'; then echo 1; else echo 0; fi
}

unique_new() {
    declare -g$2 $_unique_prefix$_unique_current
    local -n _out=$1; _out=$_unique_prefix$_unique_current
	while [[ $(unique_tst $_unique_prefix$_unique_current) == 1 ]]; do
		_unique_current=$(( _unique_current + 1 ))
	done
}

unique_del() {
	local _name=$1
	if [[ ${_name#$_unique_prefix} < $_unique_current ]]; then
		_unique_current=${_name#$_unique_prefix}
	fi
	unset $1
}
