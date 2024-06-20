./app_env_vars.ps1
./mvnw.cmd clean install

# AzureCli login - needed for development with developer credential on Windows local box.
az login

# Set the active profile to "consumer" to run the consumer application.
$Env:ACTIVE_PROFILE="consumer"
./mvnw.cmd spring-boot:run
