#!/bin/bash

echo "Files containing '/bin/bash' with execute permission for $USER:"
find / -type f -exec grep -l "/bin/bash" {} + 2>/dev/null | while read -r file; do
    if [ -x "$file" ]; then
        echo "$file"
    fi
done
