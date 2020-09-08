#!/bin/bash

while true; do

read -p "steven>" command arg1 arg2
	case "$command" in
	CHDIR|chdir)
	  cd "$arg1";;
	CLS|cls)
	  clear;;
	COPY|copy)
	  cp "$arg1" "$arg2";;
	CREATEDIR|createdir)
	  mkdir "$arg1";;
	CREATEFILE|createfile)
	  touch "$arg1";;
	DELETE|delete)
	  rm "$arg1";;
	DIR|dir)
	  ls;;
	MOVE|move)
	  mv "$arg1" "$arg2";;
	PRINT|print)
	  echo "$arg1";;
	RENAME|rename)
	  mv "$arg1" "$arg2";;
	TYPE|type)
	  cat "$arg1";;
	quit|QUIT)
	  break;;
	*)
	  echo "Invalid command";;
	esac
done 
