#!env sh

# Rename Tool V1.0
# Rename file name to POSIX file name
# Author : ihexon 
# Github : https://github.com/ihexon/rename
# Email  : zzzheasy@gmail.com
#
#
# License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
# This is free software: you are free to change and redistribute it.
# There is NO WARRANTY, to the extent permitted by law.)

FILE_NAME="$@";

echo -e "Rename \e[7m\e[1m\e[31m$FILE_NAME\e[0m"

POSIX_FILENAME=$(echo $FILE_NAME | sed "s/'//g;s/\"//g;s/ /_/g;s/\\\//g;s/|//g");

echo -e "Rename to POSIX filename \e[7m\e[32m$POSIX_FILENAME\e[0m"

mv $FILE_NAME $POSIX_FILENAME
