# RECON & INFORMATION GATHERING

# AWS Configuration Files

# ~/.aws/credentials
[default]
aws_access_key_id=AWS_ACCESS_KEY_ID
aws_secret_access_key=AWS_SECRET_ACCESS_KEY

# ~/.aws/config
[default]
region=eu-central-1

# AWS Users, Roles & Groups
aws configure list # Show current profile
aws configure list-profiles | sort # Show all profiles
aws iam list-access-keys # List IAM access keys
aws sts get-caller-identity # Checking credentials for the user
aws iam list-users # List IAM Users
aws iam list-groups-for-user --user-name user-name # Listing the IAM groups that the specified IAM user belongs to
aws iam list-attached-user-policies --user-name user-name # Listing all managed policies that are attached to the specified IAM user
aws iam list-user-policies --user-name user-name # Listing the names of the inline policies embedded in the specified IAM user


# EC2 Instance Metadata Service (IMDS)
curl 169.254.169.254/latest/meta-data/identity-credentials/ec2/security-credentials/ec2-instance # Getting Security Credentials

