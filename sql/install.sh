#!/bin/bash
read -p "WARNING: IT WILL OVERWRITE ALL DATA IN YOUR DATABASE! Press any key to continue.."
CONF_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "../contrib/bashlib/sql.sh"

mysqlrun "import" "$CONF_DIR/db.conf"

read -p "Terminated. Press any key to continue.."