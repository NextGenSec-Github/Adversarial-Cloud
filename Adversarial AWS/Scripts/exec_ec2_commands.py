import boto3

# Create an EC2 client
ec2_client = boto3.client('ec2')

# Run discovery commands
response = ec2_client.describe_snapshots()
print(response)

response = ec2_client.describe_instances()
print(response)

reponse = ec2_client.describe_vpcs()
print(response)

response = ec2_client.describe_security_groups()
print(response)













