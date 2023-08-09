#!/bin/bash
# Created by Andrian Latif Devops Engineer

STR='HTTP/1.1" 500'
COUNTER=0

function Found_File(){
    for file in "../challenge-1"; do
      if [ -d $file ];
      then
            while read line; 
                do 
                    if [[ "$line" == *"$STR"* ]]; then
                        COUNTER=$((COUNTER+1))
                    fi 
            done < $file/*.log
      else
            echo "not found directory of files"
      fi
    done;
        echo "the count number of http 500 errors are --> "$COUNTER
}

Found_File