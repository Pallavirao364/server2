#!/bin/bash


current_date=$(date +%Y%m%d)
source_directory="/home/ec2-user/demo/testing"

if [ ! -d "$source_directory" ]; 
then
   echo "Source directory does not exist."
        exit 1
        fi

       for file in "$source_directory"/*; 
       do
           if [ -f "$file" ]; 
                then
                        filename=$(basename "$file")
                                extension="${filename##*.}"
                                       new_filename="${current_date}_${filename}"
                                                mv "$file" "$source_directory/$new_filename"
                                                        
                                                                echo "Renamed: $filename -> $new_filename"
                                                                    fi
                                                                    done

                                                                    echo "Renaming complete."
