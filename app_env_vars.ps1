# This is used for AzureDefaultCredential on local box when the developer's account belongs to multiple tenants.
$Env:AZURE_TENANT_ID="bc877e61-f6cf-4461-accd-0565fa4ca357"

# When switching to application identity authentication, define following env vars:
# $Env:AZURE_CLIENT_ID=""
# $Env:AZURE_CLIENT_SECRET=""
# No need to consume the vars in application.yaml, they are picked up by AzureDefaultCredential automatically.

$Env:EVENTHUB_RESOURCE_GROUP="app-hearth-dev-eastus"

# event hubs namespace should be only the name, without any other domain parts.
$Env:EVENTHUB_NAMESPACE="hcfirevinedeveventhub"
$Env:EVENTHUB_NAME="eventhub"

$Env:EVENTHUB_STORAGE_ACCOUNT_NAME="hcfirevinedevsa" 
# BEFORE RUN, COPY the storage account access key1 or key2 from the Azure portal.
$Env:EVENTHUB_STORAGE_ACCOUNT_KEY="80MvZceN9FJwx7SAaQZN4pgX6Mjg07ggX0ak+w3Rc2Ui+iJR/61mDEK62+EioTMmuXLYFqOR5CKt+AStiIVImA==" 
$Env:EVENTHUB_STORAGE_ACCOUNT_CONTAINER_NAME="eventstorage" 

[Environment]::SetEnvironmentVariable('JAVA_HOME','C:\Program Files\Amazon Corretto\jdk21.0.3_9')
