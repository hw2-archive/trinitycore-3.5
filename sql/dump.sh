#!/bin/bash
CONF_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "../contrib/bashlib/sql.sh"

mysqlrun "dump" "$CONF_DIR/db.conf"

read -p "Press any key to continue..."