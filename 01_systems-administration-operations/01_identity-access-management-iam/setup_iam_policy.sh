#!/bin/bash
# This script automates the permission and ownership assignement 
# It gives 744 permissions to a file and the user 
# chmod +x set_perms.sh
# ./set_perms.sh test.sh denis

# Check argument count
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <username>"
    exit 1
fi

FILE="$1"
USER="$2"

# Check if file exists
if [ ! -e "$FILE" ]; then
    echo "Error: File '$FILE' does not exist."
    exit 1
fi

# Change ownership
sudo chown "$USER" "$FILE"

# Set permissions to 744
chmod 744 "$FILE"

echo "✔ Ownership set to '$USER'"
echo "✔ Permissions set to 744 on '$FILE'"
