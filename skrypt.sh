#!/bin/bash

if [[ $1 == "--date" ]]; then
  date +%Y-%m-%d
fi

if [ "$1" = "--logs" ]; then
  if [ -z "$2" ]; then
    num_files=100
  else
    num_files=$2
  fi
  
  for (( i=1; i<=$num_files; i++ ))
  do
    echo "log$i.txt" > "log$i.txt"
    echo "Script name: $0" >> "log$i.txt"
    echo "Date: $(date)" >> "log$i.txt"
  done
fi

if [[ $1 == "--help" ]]; then
    echo "Dostępne opcje:"
    echo "--date: wyświetla dzisiejszą datę"
    echo "--logs [LICZBA_PLIKOW]: tworzy x plików logx.txt z danymi w środku pliku, x – liczba plików."
    echo "--help: wyświetla pomoc"
fi
