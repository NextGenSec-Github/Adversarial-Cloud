import boto3

# Create an ec2 client
ec2_client = boto3.client('ec2')
# Retrieve instance IDs. E.g
instance_ids = ['i-1234567890abcdef0', 'i-abcdefgh12345678']

# Retrieve user data for each instance
for instance_id in instance_ids:
  response = ec2_client.describe_instance_attribute(
    InstanceId=instance_id,
    Attribute='userData'
  )

  user_data = response['UserData']
  print(user_data)






