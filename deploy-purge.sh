#!/bin/bash

az iot edge deployment list -g "$AZURE_RESOURCE_GROUP" -n "$HUB_NAME" --query '[].id' -o tsv | xargs -I {} az iot edge deployment delete -g "$AZURE_RESOURCE_GROUP" -d {} -n "$HUB_NAME"