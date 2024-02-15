```bash
#!/bin/bash

# Author: Dibaal Akari
# Created: 14/01/2024
# Last Modified: 14th Jan 2024

# Description:
# A bash-based CLI tool that allows users to quickly upload files to a specified
# cloud storage solution.

# Usage: ./clouduploader.sh
 
file_name=$1
bucket_name=$2

# Check if the file exists
if [ -f "$file_name" ]; then
  echo "$file_name found, proceeding with upload"
else
  echo "error: file does not exist."
exit 2
fi

# Perform the upload
upload_output=$(aws s3 cp "$file_name" s3://"$bucket_name"/ 2>&1)
upload_status=$?

if [ $upload_status -eq 0 ]; then
    echo "Upload successful!"
else
    echo "Upload failed: $upload_output."
exit 3
fi



