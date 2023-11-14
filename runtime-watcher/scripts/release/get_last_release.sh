!/usr/bin/env bash

set -o nounset
set -o errexit
set -E
set -o pipefail

RELEASE_TAG=$1

GITHUB_URL=https://api.github.com/repos/kyma-project/runtime-watcher
GITHUB_AUTH_HEADER="Authorization: Bearer ${GITHUB_TOKEN}"

CURL_RESPONSE=$(curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "${GITHUB_AUTH_HEADER}" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "${GITHUB_URL}"/releases/latest) 

# return the id of the release draft
echo "$CURL_RESPONSE"
