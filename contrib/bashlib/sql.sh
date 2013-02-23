#!/bin/bash

function mysqlcmd() {
	TPATH=$2
	FPATH=$4
	local TYPE=$1
	local DB=$5
	
	local MT_DIR=$( dirname "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )")"/mysqltools/"
	local CMD="$MT_DIR/mysql_tools"
	source $CMD "$TYPE" "" "$DB" "$FULL" ""
}

function mysqlrun() {
	source "$2"
	mysqlcmd "$1" "./base/world" 0 "" "$DB_WORLD"
	mysqlcmd "$1" "./base/characters" 0 "" "$DB_CHAR"
	mysqlcmd "$1" "./base/auth" 0 "" "$DB_AUTH"
}