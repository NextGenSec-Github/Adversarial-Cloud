# GENERAL COMMANDS

# Create a cluster
aws eks create-cluster --name <cluster-name>

# Delete a cluster 
aws eks delete-cluster --name <cluster-name>

# List information about the cluster
aws eks describe-cluster --name <cluster-name>

# List all clusters in you region
aws eks list-clusters

# Tag a resource
aws eks tag-resource --resource-arn <resource-arn> --tags <tags>

# Untag a resource
aws eks untag-resource --resource-arn <resource-arn> --tag-keys <tag-key>


