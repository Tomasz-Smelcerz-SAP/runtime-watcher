#!/usr/bin/env bash

set -o nounset
set -o pipefail

GITHUB_URL=https://api.github.com/repos/kyma-project/runtime-watcher

CURL_RESPONSE=$(curl -L \
  --fail-with-body \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "${GITHUB_URL}"/releases/latest) 

CURL_EXIT_CODE=$?

echo "${CURL_RESPONSE}"
exit ${CURL_EXIT_CODE}

# return the id of the release draft
