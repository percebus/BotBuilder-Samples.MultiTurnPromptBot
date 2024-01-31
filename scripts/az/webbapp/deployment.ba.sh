
set -e
set -v

az webapp deployment source config-zip \
    --resource-group ${AZ_RESOURCE_GROUP_NAME} \
    --name "${AZ_RESOURCE_GROUP_NAME}-${PROJECT_NAME}" --src "./Publish/${PROJECT_NAME}.zip"

set +v
set +e
