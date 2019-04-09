#!/bin/bash

if [[ -n $1 ]]; then
	docker run -ti --rm maxsid/anaconda3-notebook python -c "from notebook.auth import passwd; print(passwd('$1'))"
else
	echo "Enter password! Example: get_hash.sh <password>"
fi
