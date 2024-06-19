# Spring Cloud Azure Eventhub Demo 

## Prerequisite
* Java 11 or 17
* Azure Event Hub 


## Getting Started

* Build and run on Windows
1. Open and edit run.ps1 to set environment variables and select producer or consumer profile.
   IMPORTANT: EVENTHUB_STORAGE_ACCOUNT_KEY must be set to the storage account access key1 or key2 copied from the Azure portal.
3. Run the script file in PowerShell 7
    ```
    ./run.ps1
    ```
4. In another PowerShall 7 session, test the producer (or consumer) app.
   For example producer app test:
    ```
    PS C:\> curl "http://localhost:8080/event?q=123"
    Event Sent!
    ```

For more info, https://learn.microsoft.com/en-us/azure/developer/java/spring-framework/configure-spring-cloud-stream-binder-java-app-azure-event-hub 
