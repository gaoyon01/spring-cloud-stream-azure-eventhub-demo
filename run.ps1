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
$Env:EVENTHUB_STORAGE_ACCOUNT_KEY="" 
$Env:EVENTHUB_STORAGE_ACCOUNT_CONTAINER_NAME="eventstorage" 

# Cannot use jdk21 with some of the current libraries/versions, change to a lower one.
[Environment]::SetEnvironmentVariable('JAVA_HOME','C:\Program Files\Amazon Corretto\jdk17.0.11_9')

./mvnw.cmd clean install

# AzureCli login - needed for development with developer credential on Windows local box.
az login

# Set the active profile to "producer" to run the producer application.
# Set the active profile to "consumer" to run the consumer application.
$Env:ACTIVE_PROFILE="producer"
# $Env:ACTIVE_PROFILE="consumer"

./mvnw.cmd spring-boot:run
