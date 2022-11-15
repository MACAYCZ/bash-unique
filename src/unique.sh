
#!/bin/bash

declare -r _unique_prefix_='_'
declare -i _unique_current_=0

unique_test() {
	if typeset -p $1 2> /dev/null | grep -q '^'; then echo 1; else echo 0; fi
}

unique_type() {
	local _unique_info_=$(declare -p $1)
	echo ${_unique_info_:9:1}
}

unique_new() {
	local _unique_options_=$2; if [[ $_unique_options_ == '--' ]]; then _unique_options_='  '; fi
	declare -g${_unique_options_:1} $_unique_prefix_$_unique_current_
	local -n _unique_out_=$1; _unique_out_=$_unique_prefix_$_unique_current_
	while [[ $(unique_test $_unique_prefix_$_unique_current_) == 1 ]]; do
		_unique_current_=$(( $_unique_current_ + 1 ))
	done
}

unique_del() {
	local _unique_name_=$1
	if [[ ${_unique_name_#$_unique_prefix_} < $_unique_current_ ]]; then
		_unique_current_=${_unique_name_#$_unique_prefix_}
	fi
	unset $1
}
