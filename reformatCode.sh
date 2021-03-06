#!/bin/bash
find source/ -name "*.cpp" -o -name "*.cxx" -o -name "*.hxx" -o -name "*.c" -o -name "*.h" -o -name "*.hxx.in" > fileList.txt
uncrustify -c uncrustify.config -F fileList.txt --replace
find source/ -name "*.unc-backup~" -o -name "*.unc-backup.md5~" > fileList.txt
xargs -I{} sh -c 'rm {}' < fileList.txt
rm fileList.txt
