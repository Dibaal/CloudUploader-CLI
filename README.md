# CloudUploader-CLI

This is a capstone project to build a bash-based Command-Line Interface (CLI) application designed to streamline the process of uploading files to cloud storage. A tool that empowers users to efficiently transfer files to their chosen cloud storage solution with the simplicity and ease of popular storage services.
This a project from [learntocloud.guide](https://learntocloud.guide/) authored by @madebygps


## Prerequisites
Before using CloudUploader, ensure you have the following:


+ [AWS CLI installed and configured with your AWS credentials.](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)
+ [Basic familiarity with command-line operations.](https://www.codecademy.com/article/command-line-commands)

  
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




CloudUploader
Overview
CloudUploader is a command-line tool designed for easy and efficient uploading of files to AWS S3 storage. It provides a simple interface for quickly transferring files from your local system to an S3 bucket.

Prerequisites
Before using CloudUploader, ensure you have the following:

AWS CLI installed and configured with your AWS credentials.
Basic familiarity with command-line operations.
Installation
Download CloudUploader:

Clone or download the CloudUploader repository from GitHub.
Extract the files if downloaded as a zip.
Run the Installer:

Navigate to the CloudUploader directory.
Run the installation script:

bash
Copy code
./install.sh
Verify Installation:

Ensure that CloudUploader is correctly installed by running:
bash
Copy code
clouduploader --help
This should display the help information for CloudUploader.
Usage
To use CloudUploader, follow this simple command structure:

bash
Copy code
clouduploader <file_path> <s3_bucket_name>
file_path: Path to the file you wish to upload.
s3_bucket_name: Name of the target AWS S3 bucket.
Example
Upload a file named example.txt to a bucket named my-s3-bucket:


clouduploader /path/to/example.txt my-s3-bucket
Troubleshooting
File Not Found Error:
If you encounter a 'file not found' error, ensure the file path is correct and that the file exists at that location.

• AWS CLI Not Configured:
CloudUploader depends on AWS CLI. If you get errors related to AWS, make sure AWS CLI is installed and properly configured with your credentials.

• Permission Issues:
If you encounter permission issues, verify that your AWS credentials have the necessary permissions for S3 operations.

• Common Issues
Upload Fails Silently:
Ensure you have the necessary write permissions on the S3 bucket.

• Script Not Executing:
Make sure you have given executable permissions to the script. You can set this with chmod +x clouduploader.

Support

For support, issues, or feature requests, please file an issue on the GitHub repository issue tracker.
