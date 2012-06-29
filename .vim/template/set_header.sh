#!/bin/bash

FILE=`echo -n $1 | tr '[[:punct:]]' '_' | tr '[[:lower:]]' '[[:upper:]]'`_
echo -e "#ifndef ${FILE}\n# define ${FILE}\n\n\n\n#endif /* !${FILE} */"
