# Objective

This project aims to create a bash-based Command-Line Interface (CLI) tool for efficiently uploading files to various cloud storage solutions. Designed for simplicity and ease of use, it allows users to quickly transfer files to their preferred cloud storage, such as AWS S3, Google Cloud Storage, or Azure Blob Storage. While this demonstration focuses on AWS S3, the methods are applicable to any cloud storage service.This a project from [learntocloud.guide](https://learntocloud.guide/) authored by @madebygps

To list the contents of the specific S3 bucket, use the following Bash command:


## Prerequisites

. Basic understanding of Linux commands.
. Familiarity with Bash scripting. For beginners, refer to my previous article.
. Knowledge of a text editor (Nano, Vi, Vim, etc.). This guide uses Vim.
. A terminal running Bash.
. Basic understanding of cloud storage services, e.g., AWS S3.


Before using CloudUploader, ensure you have the following:


+ [AWS CLI installed and configured with your AWS credentials.](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)
+ [Basic familiarity with command-line operations.](https://www.codecademy.com/article/command-line-commands)

## Test Connection:

Run the command below

```bash
aws s3 ls
```



 A list of your S3 buckets should appear if configured correctly.

 ## Create the S3 Bucket and Configure Permissions

 + Create S3 Bucket:

``` aws s3 mb s3://cloud-uploader-bucket-name14012024 ```

 + Create Bucket Policy with bucket-policy.json:

 ``` aws s3api put-bucket-policy --bucket cloud-uploader-bucket-name14012024 --policy file://bucket-policy.json ```

 ## Create the Script File with Executable Permissions

  + Create the script file:

``` touch clouduploader.sh ```
``` chmod 744 clouduploader.sh ```

+ Write the script using Vim:

  ``` vim clouduploader.sh ```

  ### Script Explanation
  
__Defining Variables:__ file_name and bucket_name capture the first and second command-line arguments, respectively.

__Checking File Existence:__ Validates the presence of the specified file before attempting upload.

__Performing File Upload:__ Utilizes aws s3 cp to upload the file, capturing output and status for error handling.

__Success and Error Reporting:__ Provides clear feedback on the upload process's outcome.  


## Execute the Script

Run the script with the file and bucket name as arguments:

``` ./clouduploader.sh bucket-policy.json cloud-uploader-bucket-name14012024 ```

+ To verify the upload:

   ``` aws s3 ls s3://cloud-uploader-bucket-name14012024/ ```
  
## Installation

To install CloudUploader:

1. Clone the CloudUploader repository.
2. Navigate to the CloudUploader directory
3. Run the installation script:


```./install.sh ```


## Verify Installation:

Ensure that CloudUploader is correctly installed by running:


``` clouduploader --help ```


This should display the help information for CloudUploader.

## Usage
To use CloudUploader, follow this simple command structure:


```clouduploader <file_path> <s3_bucket_name>```


. __file_path__: Path to the file you wish to upload

• __s3_bucket_name__: Name of the target AWS S3 bucket

Example
Upload a file named example.txt to a bucket named my-s3-bucket:



``` clouduploader /path/to/example.txt my-s3-bucket ```



## Troubleshooting

. __File Not Found Error:__
If you encounter a 'file not found' error, ensure the file path is correct and that the file exists at that location.

• __AWS CLI Not Configured:__
CloudUploader depends on AWS CLI. If you get errors related to AWS, make sure AWS CLI is installed and properly configured with your credentials.

• __Permission Issues:__
If you encounter permission issues, verify that your AWS credentials have the necessary permissions for S3 operations.

• __Common Issues__
Upload Fails Silently:
Ensure you have the necessary write permissions on the S3 bucket.

• __Script Not Executing:__
Make sure you have given executable permissions to the script. You can set this with chmod +x clouduploader.


