#!/bin/bash

# Auto add shebang and doc note of file
# Usage: ./s2.sh test

if [[ -e $1 ]]; then
	echo "file $1 exists, error."
	exit 1
fi

cat > $1 << _EOF_
#!/bin/bash

# Author: $USER 
# Date: $(date)
# Description: 

_EOF_
vim +5 $1
