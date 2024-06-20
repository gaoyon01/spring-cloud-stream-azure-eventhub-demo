./app_env_vars.ps1
./mvnw.cmd clean install

# AzureCli login - needed for development with developer credential on Windows local box.
az login

# Set the active profile to "consumer" to run the consumer application.
$Env:ACTIVE_PROFILE="consumer"
# No server needed for comsumer app, just set this to avoid "port already in use" error
$Env:APP_SERVER_PORT="8090"
./mvnw.cmd spring-boot:run
