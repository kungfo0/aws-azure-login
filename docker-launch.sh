#!/usr/bin/env bash

docker run -e "AUTHENTICATOR_KEY=${AUTHENTICATOR_KEY}" \
    -e "AZURE_DEFAULT_ROLE_ARN=${AZURE_DEFAULT_ROLE_ARN}" \
    -e "AZURE_TENANT_ID=${AZURE_TENANT_ID}" \
    -e "AZURE_APP_ID_URI=${AZURE_APP_ID_URI}" \
    -e "AZURE_DEFAULT_USERNAME=${AZURE_DEFAULT_USERNAME}" \
    -e "AZURE_DEFAULT_ROLE_ARN=${AZURE_DEFAULT_ROLE_ARN}" \
    -e "AZURE_DEFAULT_DURATION_HOURS=${AZURE_DEFAULT_DURATION_HOURS}" \
    --rm -it -v ~/.aws:/root/.aws kungfo0/aws-azure-login "$@"
