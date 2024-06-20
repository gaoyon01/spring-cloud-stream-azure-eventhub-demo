# Spring Cloud Azure Eventhub Demo 

## Prerequisite
* Java 11 or 17
* Azure Event Hub 


## Getting Started

* Build and run on Windows
1. Open and edit app_env_vars.ps1 to set environment variables.
   IMPORTANT: EVENTHUB_STORAGE_ACCOUNT_KEY must be set to the storage account access key1 or key2 copied from the Azure portal.
3. Run producer (or consumer) script file in PowerShell 7
    ```
    ./app_producer.ps1
    ```
Or
    ```
    ./app_consumer.ps1
    ```

4. To test the producer app, while it's running in the PowerShell, open another PowerShell 7 session and hit the controller. For example:
    ```
    PS C:\> curl "http://localhost:8080/event?q=123"
    Event Sent!
    ```

For more info, https://learn.microsoft.com/en-us/azure/developer/java/spring-framework/configure-spring-cloud-stream-binder-java-app-azure-event-hub 
