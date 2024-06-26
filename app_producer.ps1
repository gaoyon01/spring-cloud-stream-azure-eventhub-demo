./app_env_vars.ps1
./mvnw.cmd clean install

# AzureCli login - needed for development with developer credential on Windows local box.
az login

# Set the active profile to "producer" to run the producer application.
$Env:ACTIVE_PROFILE="producer"
$Env:APP_SERVER_PORT="8080"
./mvnw.cmd spring-boot:run
