#!/bin/bash

for infile in MULTI*pdf;
do
    outfile_=`echo "$infile" | cut -f1 -d'.'`
    outfile=`echo $outfile_ | xargs`_.pdf
    echo "$outfile";
    gs -q -dNOPAUSE -dBATCH -sstdout=/dev/null -sDEFAULTPAPERSIZE=a4 -sDEVICE=pdfwrite -sOutputFile="$outfile" -c 3000000 setvmthreshold -f "$infile";
done
