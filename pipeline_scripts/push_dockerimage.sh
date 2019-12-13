#!/bin/bash
source pipeline_scripts/common.sh
set -x
docker push "$IMAGE_TAG" && ([[  -z "$IMAGE_TAG_LATEST" ]] || docker push "$IMAGE_TAG_LATEST")
